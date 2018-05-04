global class CalculateServiceabilityCtrl {

    String appId;
    private  Map<String,Decimal> mapOfIncomeSourceAndEmpTypeAsKey; //Map of IncomeSource+IncomeType as key and Multiplication Factor as Value to be used in Total Income calculation
    private  Map<String,Decimal> mapOfIncome;                      //Map of empType and Multiplication Factor to be used in Total Income calculation
    private  List<Income_Configuration__c> incomeConfigurations;   //This is to capture income Configuration
    private  CommonQueryUtil  commonQueries= new CommonQueryUtil();//This is to get common queries used in system
    public Decimal serviceConst = [Select Serviceability_Const__c, Label from Serviceability__mdt WHERE Label=:'Const'].Serviceability_Const__c;
    private  List<genesis__Applications__c> allRecordsApp;         //This is used to capture current Applications and its all fields value
    private  Result checkResult = new Result();
    private  list<Income__c> totalPrimaryIncomes;                  //This is to capture Income with income Status as 'Primary'
    private  list<Income__c> totalPreviousIncomes;                 //This is to capture Income with income Status as 'Previous'
    private  list<Income__c> totalSecondaryIncomes;                //This is to capture Income with  income Status as 'Secondary'
    private  list<Income__c> totalSpouseIncome;                    //This is to capture Income with income Status as 'Spouse'
    private  list<Income__c> primaryCumBenefitsIncome;             //This is to capture Income with type of benefits as mapOfIncome.key()
    private  list<Expense_Configuration__c> expenseConfigurations;        //This is to capture Expense Configuration
    private  list<Expense__c > totalCreditCardExpense;    //This is to capture expense of Type 'Credit Card'
    private  list<Expense__c > totalResidentialExpenses;  //This is to capture expense of Type 'Residential Expense'
    private  list<Expense__c > totalDebts;                //This is to capture expense of Type 'Total Debt'
    private  list<Expense__c > totalLivingExpenses;       //This is to capture expense of Type 'Living Expense'
    //serviceConst = [Select Serviceability_Const__c, Label from Serviceability__mdt WHERE Label=:'Const'].Serviceability_Const__c;
    /* This method calculates serviceability and returns the amount in string 'retval' */
    webservice static String getServiceableAmount(string id){
        //To store return string
        String retVal;
        Decimal serviceConst;
        serviceConst = [Select Serviceability_Const__c, Label from Serviceability__mdt WHERE Label=:'Const'].Serviceability_Const__c;
        genesis__Applications__c genApp =  new  genesis__Applications__c();
        try{
            /*** Get applciation details from input app ID****/
            genApp =[SELECT id,
                            Name,
                            Total_Income__c,
                            Total_Expense__c,
                            Serviceable_Amount__c
                        FROM genesis__Applications__c where id = :id];  
               
            genApp.Serviceable_Amount__c = (genApp.Total_Income__c - genApp.Total_Expense__c)/serviceConst;
            //Decimal a = doServiceability();
            update genApp;
            retVal = 'Successfully calculated..!!';
        }
        catch(Exception e){
           insert new clcommon__Log__c(
                    clcommon__Message__c = 'CalculateServiceability :: '+e.getStackTraceString(),
                    clcommon__Time__c = System.Now());  
           retVal = e.getMessage();        
        }
        return retVal;
    }
    
    public void createMapOfIncomeFactor(){
        mapOfIncomeSourceAndEmpTypeAsKey = new Map<String,Decimal>();
        mapOfIncome = new Map<String,Decimal>();
        incomeConfigurations = commonQueries.queryIncomeConfiguration();
        if(incomeConfigurations.size()>0){
            for(Income_Configuration__c inc : incomeConfigurations ){
                
                if(inc.Employment_Type__c != null && inc.Income_Source__c != null && inc.Multiplication_Factor__c != null){
                    mapOfIncomeSourceAndEmpTypeAsKey.put(inc.Income_Source__c+inc.Employment_Type__c,inc.Multiplication_Factor__c);
                }
                
                if(inc.Employment_Type__c != null && inc.Multiplication_Factor__c != null){
                    mapOfIncome.put(inc.Income_Source__c,inc.Multiplication_Factor__c);
                }
            }
        } 
    }
    //public Result doServiceability(){
    public Decimal doServiceability(){

        createMapOfIncomeFactor();
        Decimal totalMonthlyIncome = 0;
        totalMonthlyIncome = calculateMonthlyIncome();
        
        Decimal totalMonthlyExpese = 0;
        //totalMonthlyExpese = calculateMonthlyExpenses();
        
        System.debug('totalMonthlyExpese='+totalMonthlyExpese);
        System.debug('totalMonthlyIncome='+totalMonthlyIncome);
        
        Decimal monthlyFactor = 1;
        Decimal highlyLeveragedMonthlyIncome  = 0;
        Decimal highlyLeveragedUmi  = 1;
        
        if(serviceConst != null){
            monthlyFactor = serviceConst;
        }
        
        Decimal unCommittedMonthlyIncome = 0;
        unCommittedMonthlyIncome = totalMonthlyIncome-totalMonthlyExpese;
        System.debug('unCommittedMonthlyIncome='+unCommittedMonthlyIncome);
        System.debug('monthlyFactor='+monthlyFactor);
        Decimal serviceabilityAmount = 0;
        if(monthlyFactor!=0){
            serviceabilityAmount = unCommittedMonthlyIncome/monthlyFactor;
        }
        if(allRecordsApp !=null && allRecordsApp.size()>0 && 
                        highlyLeveragedMonthlyIncome!=null 
                                    && highlyLeveragedUmi!=null && unCommittedMonthlyIncome!=null){
            allRecordsApp[0].Serviceable_Amount__c = serviceabilityAmount;
            allRecordsApp[0].Total_Monthly_Income__c = totalMonthlyIncome;
            allRecordsApp[0].Total_Monthly_Expenses__c = totalMonthlyExpese;
            try{
                 update allRecordsApp;
            }catch(Exception e){
                System.debug('e='+e.getMessage());
                //voLogInstance.logException(1003, '[ServiceabilityCalcCtrl.doServiceability] Exception Occured while updating App Record', e);
            }
            //voLogInstance.commitToDb();      
            checkResult.passFail = true;
            checkResult.resultVal = allRecordsApp;
        }
        
        //return  checkResult;
        return unCommittedMonthlyIncome;
    }
    public Decimal calculateMonthlyIncome(){
        
        Decimal sum = 0;
        System.debug('mapOfIncome='+mapOfIncome);
        totalPrimaryIncomes = commonQueries.queryPrimaryIncomes(appId);
        System.debug('totalPrimaryIncomes='+totalPrimaryIncomes);
        if(totalPrimaryIncomes.size()>0){
            for(Income__c  prInc : totalPrimaryIncomes){
                
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                if(mapOfIncomeSourceAndEmpTypeAsKey.get(prInc.Income_Status__c+prInc.Type_of_Income_Source__c) != null){
                    multiplicationFactor = mapOfIncomeSourceAndEmpTypeAsKey.get(prInc.Income_Status__c+prInc.Type_of_Income_Source__c);
                }
                
                if(prInc.Monthly_Income__c != null){
                    monthlyIncomeAmount = prInc.Monthly_Income__c;
                }
                System.debug('multiplicationFactor='+multiplicationFactor);
                System.debug('monthlyIncomeAmount='+monthlyIncomeAmount );
                Decimal totalIncome = 0;
                totalIncome = (monthlyIncomeAmount*multiplicationFactor)/100;
                system.debug('sum primaryIncome='+totalIncome);
                sum = sum + totalIncome; 
            }
        }
        totalPreviousIncomes = commonQueries.queryPreviousIncomes(appId);
        if(totalPreviousIncomes.size()>0){
            
            for(Income__c  prevInc : totalPreviousIncomes){
                System.debug('prevInc='+prevInc);
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                if(mapOfIncomeSourceAndEmpTypeAsKey.get(prevInc.Income_Status__c+prevInc.Type_of_Income_Source__c) != null){
                    multiplicationFactor = mapOfIncomeSourceAndEmpTypeAsKey.get(prevInc.Income_Status__c+prevInc.Type_of_Income_Source__c);
                }    
                System.debug('multiplicationFactor='+multiplicationFactor );
                if(prevInc.Monthly_Income__c != null){
                    monthlyIncomeAmount = prevInc.Monthly_Income__c;
                }
                System.debug('monthlyIncomeAmount='+monthlyIncomeAmount);
                Decimal totalIncome =0;
                totalIncome = (monthlyIncomeAmount*multiplicationFactor)/100;
                system.debug('sum previousIncome='+totalIncome);
                sum = sum + totalIncome; 
            }
        }
        totalSecondaryIncomes = commonQueries.querySecondaryIncomes(appId);
        
        if(totalSecondaryIncomes.size()>0){
            
            for(Income__c  secondInc: totalSecondaryIncomes){
                System.debug('secondInc'+secondInc);
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                if(mapOfIncomeSourceAndEmpTypeAsKey.get(secondInc.Income_Status__c+secondInc.Type_of_Income_Source__c) != null){
                    multiplicationFactor = mapOfIncomeSourceAndEmpTypeAsKey.get(secondInc.Income_Status__c+secondInc.Type_of_Income_Source__c);
                }
                System.debug('multiplicationFactor='+multiplicationFactor);
                if(secondInc.Monthly_Income__c != null){
                    monthlyIncomeAmount = secondInc.Monthly_Income__c;
                }
                System.debug('monthlyIncomeAmount='+monthlyIncomeAmount );
                Decimal totalIncome = 0;
                totalIncome = (monthlyIncomeAmount*multiplicationFactor)/100;
                system.debug('sum secondryIncome='+totalIncome);
                sum = sum + totalIncome; 
            }
        }
        
        totalSpouseIncome = commonQueries.querySpouseIncome(appId);
        if(totalSpouseIncome.size()>0){
            
            for(Income__c  spouseInc: totalSpouseIncome){
                System.debug('spouseInc='+spouseInc);
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                if(mapOfIncomeSourceAndEmpTypeAsKey.get(spouseInc.Income_Status__c+spouseInc.Type_of_Income_Source__c) != null){
                    multiplicationFactor = mapOfIncomeSourceAndEmpTypeAsKey.get(spouseInc.Income_Status__c+spouseInc.Type_of_Income_Source__c);
                }
                System.debug('multiplicationFactor='+multiplicationFactor);
                if(spouseInc.Monthly_Income__c != null){
                    monthlyIncomeAmount = spouseInc.Monthly_Income__c;
                }
                System.debug('monthlyIncomeAmount='+monthlyIncomeAmount );
                Decimal totalIncome = 0;
                totalIncome = (monthlyIncomeAmount*multiplicationFactor)/100;
                system.debug('sum spouseIncome='+totalIncome);
                sum = sum + totalIncome; 
            }
        }
        
       
        /*if(mapOfIncome !=null && mapOfIncome.keySet().size()>0){
            System.debug('mapOfIncome.keySet()='+mapOfIncome.keySet());
            primaryCumBenefitsIncome = [select id ,Income_Status__c,Monthly_Income__c,name,Type_of_Income_Source__c from Income__c where Type_of_Benefits__c  in : mapOfIncome.keySet() and Application__c=:appId];
             System.debug(' primaryCumBenefitsIncome ='+primaryCumBenefitsIncome );
        }*/
        
        
        if(primaryCumBenefitsIncome != null && primaryCumBenefitsIncome.size()>0){
            for(Income__c  inc : primaryCumBenefitsIncome){
                System.debug('inc benefits='+inc);
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                Decimal totalIncome = 0;
                /*if(mapOfIncomeSourceAndEmpTypeAsKey.get(inc.Income_Status__c+inc.Type_of_Benefits__c ) != null){
                    multiplicationFactor = mapOfIncomeSourceAndEmpTypeAsKey.get(inc.Income_Status__c+inc.Type_of_Benefits__c );
                }
                System.debug('multiplicationFactor='+multiplicationFactor);
                */
                if(inc.Monthly_Income__c != null){
                    monthlyIncomeAmount = inc.Monthly_Income__c;
                }
                
                totalIncome  = (monthlyIncomeAmount *multiplicationFactor)/100;
                system.debug('sum primaryCumBenefitsIncome='+totalIncome);
                sum = sum + totalIncome; 
            }   
        }
        System.debug('sum='+sum);
        return sum;
    }
    public Decimal calculateMonthlyExpenses(){
        
        expenseConfigurations = commonQueries.queryExpenseConfiguration();
        
        Decimal creditCardPayents =  0;
        creditCardPayents =  creditCardPayment();
        System.debug('creditCardPayents='+creditCardPayents);
        
        Decimal livingExpenses = 0;
        livingExpenses = livingExpenses();
        System.debug('livingExpenses ='+livingExpenses);
        
        Decimal residentialExpenses = 0;
        residentialExpenses = residentialExpenses();
        System.debug('residentialExpenses ='+residentialExpenses );
        
        Decimal debtAmount = 0;
        debtAmount = debtAmount();
        
        Decimal totalMonthlyExpenses =0;
        
        if(expenseConfigurations.size()>0){
            Decimal actualExpense = 0;
            Decimal minExpens = 0;
            for(Expense_Configuration__c  esxp: expenseConfigurations ){
                
                if(esxp.Type_of_Expense__c != null && esxp.Type_of_Expense__c.equalsIgnoreCase(System.Label.CREDIT_CARD_EXPENSE)){
                    if(creditCardPayents!=0){
                        actualExpense = (esxp.Multiplication_Factor__c*creditCardPayents)/100;
                        minExpens = esxp.Max_Cap_Value_Monthly__c;
                        Decimal creditExps =actualExpense>minExpens?actualExpense:minExpens ;
                        //totalMonthlyExpenses  = totalMonthlyExpenses +creditExps ;
                        creditCardPayents = creditExps;
                    }
                }
                if(esxp.Type_of_Expense__c != null && esxp.Type_of_Expense__c.equalsIgnoreCase(System.Label.DEBT_TYPE_EXPENSE)){
                    if(debtAmount != 0){
                        actualExpense = (esxp.Multiplication_Factor__c*debtAmount)/100;
                        minExpens  = esxp.Max_Cap_Value_Monthly__c;
                        Decimal debtExp = actualExpense>minExpens ?actualExpense:minExpens ;
                        //totalMonthlyExpenses = totalMonthlyExpenses+debtExp;
                        debtAmount = debtExp;
                    }
                }
                if(esxp.Type_of_Expense__c != null && esxp.Type_of_Expense__c.equalsIgnoreCase(System.Label.RESIDENTIAL_EXPENSE)){
                    if(residentialExpenses != 0){
                        actualExpense = (esxp.Multiplication_Factor__c*residentialExpenses)/100;
                        minExpens  = esxp.Max_Cap_Value_Monthly__c;
                        Decimal resExpfinal = actualExpense>minExpens?actualExpense:minExpens;
                        //totalMonthlyExpenses = totalMonthlyExpenses + resExpfinal;
                        residentialExpenses = resExpfinal;
                    }
                }
                if(esxp.Type_of_Expense__c != null && esxp.Type_of_Expense__c.equalsIgnoreCase(System.Label.LIVING_EXPENSE)){
                    if(livingExpenses!=0){
                        actualExpense = (esxp.Multiplication_Factor__c*livingExpenses)/100;
                        minExpens  =  esxp.Max_Cap_Value_Monthly__c;
                        Decimal livingExpfinal = actualExpense>minExpens?actualExpense:minExpens;
                        //totalMonthlyExpenses = totalMonthlyExpenses + livingExpfinal;
                        livingExpenses = livingExpfinal; 
                    }  
                }  
            }
            
        }
        if(livingExpenses != 0){
            totalMonthlyExpenses = totalMonthlyExpenses + livingExpenses;
        }
        if(residentialExpenses != 0){
            totalMonthlyExpenses = totalMonthlyExpenses + residentialExpenses;
        }
        System.debug('livingExpenses='+livingExpenses);
        System.debug('residentialExpenses='+residentialExpenses);
        Decimal partnerIncome = 0; 
        List<Income__c> allPartnerIncomes = commonQueries.querySpouseIncome(appId);
        if(allPartnerIncomes!=null && allPartnerIncomes.size()>0){
            for(Income__c inc : allPartnerIncomes){
                if(inc.Monthly_Income__c!=null){
                    partnerIncome = partnerIncome + inc.Monthly_Income__c;
                }
            }
        }
        System.debug('partnerIncome ='+partnerIncome );
        Decimal scoringIncome = 0;
        /*if(allRecordsApp !=null && allRecordsApp.size()>0 && allRecordsApp[0].Scoring_Income__c!=null){
            scoringIncome = allRecordsApp[0].Scoring_Income__c;
        }
        */
        Decimal incomeRatio = 0;
        Decimal partnerIncomeAndScoringIncomeSum = 0;
        
        partnerIncomeAndScoringIncomeSum = partnerIncome + scoringIncome;
        System.debug('partnerIncomeAndScoringIncomeSum='+partnerIncomeAndScoringIncomeSum);
        if(partnerIncomeAndScoringIncomeSum!=0){
            incomeRatio = scoringIncome/partnerIncomeAndScoringIncomeSum;
        }
        Decimal newtotalMonthlyExpenses = 0;
        System.debug('debtAmount ='+debtAmount);
        System.debug('creditCardPayents='+creditCardPayents);
        System.debug('totalMonthlyExpenses='+totalMonthlyExpenses);
        System.debug('incomeRatio ='+incomeRatio );
        if(incomeRatio!=null){
            newtotalMonthlyExpenses = totalMonthlyExpenses*incomeRatio + debtAmount + creditCardPayents;
        }
        System.debug('newtotalMonthlyExpenses ='+newtotalMonthlyExpenses);
       
        return newtotalMonthlyExpenses;
    }
    public  Decimal creditCardPayment(){
        
        totalCreditCardExpense = commonQueries.queryCreditCardExpense(appId);
        
        Decimal creditCardRemAmount = 0;
        if(totalCreditCardExpense.size()>0){
            
            for(Expense__c ccPayment : totalCreditCardExpense ){
                /*if(ccPayment.Total_Credit_Limit_for_all_Card__c != null){
                    creditCardRemAmount = creditCardRemAmount + ccPayment.Total_Credit_Limit_for_all_Card__c;
                }
                */
            }
        }
        return creditCardRemAmount ;
    }
    public  Decimal livingExpenses(){
        
        totalLivingExpenses = commonQueries.queryLivingExpenses(appId);
        Decimal sum = 0;
        
        if(totalLivingExpenses.size()>0){
            for(Expense__c exp :  totalLivingExpenses){
                sum = sum + exp.Expense_Value__c;
            }
        }
       
        System.debug('total Living from Query='+sum);
        /*Decimal minExpenses = getMinMumExpensesFromMatrix();
        minLivingExpense  = minExpenses;
        if(minExpenses>sum){
            calculatedLivingExpense = minExpenses;
            sum = minExpenses;
        }else{
            calculatedLivingExpense = sum;
        }
        */
        System.debug('new Living expense='+sum);
        return sum;
    }

    public  Decimal residentialExpenses(){
        
        totalResidentialExpenses = commonQueries.queryResidentialExpenses(appId);
        Decimal sum = 0;
        if(totalResidentialExpenses.size()>0){
            for(Expense__c  exps : totalResidentialExpenses){
                if(exps.Monthly_Expense__c != null){
                    sum = sum + exps.Monthly_Expense__c;
                }
            }
        }
        
        System.debug('total residential Expense='+sum);
        return sum;
    }
    public  Decimal debtAmount(){
        
        totalDebts = commonQueries.queryDebtRecords(appId);
        Decimal sum = 0;
        if(totalDebts.size()>0){
            for(Expense__c  exps : totalDebts ){
                /*if(exps.Monthly_Debt__c != null){
                    sum = sum + exps.Monthly_Debt__c; 
                } 
                */     
            }
        }
        System.debug('debt total='+sum);
        return sum;
    }
}