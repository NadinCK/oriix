global with sharing  class CalculateServiceabilityCtrl1 {
    //public Map<String,Decimal> mapOfIncomeSourceAndEmpTypeAsKey; //Map of IncomeSource+IncomeType as key and Multiplication Factor as Value to be used in Total Income calculation
    //private  Map<String,Decimal> mapOfIncome;                      //Map of empType and Multiplication Factor to be used in Total Income calculation
    //private  CommonQueryUtil  commonQueries= new CommonQueryUtil();//This is to get common queries used in system
    //private  List<Income_Configuration__c> incomeConfigurations;   //This is to capture income Configuration
    Webservice static String getServiceableAmount(String id){
        String retVal = '';
        genesis__Applications__c genApp =  new  genesis__Applications__c();
        try{
            genApp =[SELECT id,
                            Name,
                            Total_Income__c,
                            Total_Expense__c,
                            Serviceable_Amount__c
                        FROM genesis__Applications__c where id = :id];  
            Decimal totalInc = getTotalIncome(id);
            system.debug('totalInc calculated'+totalInc );
            Decimal totalExp = getTotalExpense(id);
            system.debug('totalExp calculated'+totalExp );
            Decimal serviceC = getServiceConst();
            system.debug('serviceC calculated'+serviceC );
            Decimal serviceAmount = calculateServiceability(totalInc,totalExp,serviceC);
            genApp.Serviceable_Amount__c = serviceAmount;
            genApp.Total_Serviceable_Expense__c = totalExp;
            genApp.Total_Serviceable_Income__c = totalInc;
            update genApp;
            retval = 'Successfully calculated..!! '+serviceAmount;
        }
        catch(Exception e){
            retval = 'Error while calculating!';
            system.debug('Exception'+e.getmessage()+e.getlinenumber());
        }
        return retVal;
    }
    
    public static Decimal calculateServiceability(Decimal totalIncome, Decimal totalExpense, Decimal serviceConst){
        
        Decimal serviceableAmount = 0;
        serviceableAmount = (totalIncome - totalExpense)/serviceConst;
        
        return serviceableAmount;    
    }
    public static Map<String,Decimal> createMapOfIncomeFactor(){
        Map<String,Decimal> mapOfIncomeSourceAndEmpTypeAsKey = new Map<String,Decimal>();
        Map<String,Decimal> mapOfIncome = new Map<String,Decimal>();
        CommonQueryUtil  commonQueries= new CommonQueryUtil();
        List<Income_Configuration__c> incomeConfigurations = commonQueries.queryIncomeConfiguration();
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
        return mapOfIncomeSourceAndEmpTypeAsKey;
    }
    public static Decimal getTotalIncome(String appID){ 
        Map<String,Decimal> thisIncomeScourceNEmpMap = createMapOfIncomeFactor();
        CommonQueryUtil  commonQueries= new CommonQueryUtil();
        
        Decimal sumTotalIncome = 0;   
        Decimal totalPrimaryIncome = 0;
        Decimal totalPreviousIncome = 0;
        Decimal totalSecondaryIncome = 0;
        Decimal totalSpouseIncome = 0;
        
        list<Income__c> totalPrimaryIncomes = commonQueries.queryPrimaryIncomes(appId);
        list<Income__c> totalPreviousIncomes = commonQueries.queryPreviousIncomes(appId);
        list<Income__c> totalSecondaryIncomes = commonQueries.querySecondaryIncomes(appId);
        list<Income__c> totalSpouseIncomes = commonQueries.querySpouseIncome(appId);
        
        if(totalPrimaryIncomes.size()>0){
            for(Income__c  prInc : totalPrimaryIncomes){
                
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                if(thisIncomeScourceNEmpMap.get(prInc.Income_Status__c+prInc.Type_of_Income_Source__c) != null){
                    multiplicationFactor = thisIncomeScourceNEmpMap.get(prInc.Income_Status__c+prInc.Type_of_Income_Source__c);
                }
                
                if(prInc.Monthly_Income__c != null){
                    monthlyIncomeAmount = prInc.Monthly_Income__c;
                }
                System.debug('multiplicationFactor='+multiplicationFactor);
                System.debug('monthlyIncomeAmount='+monthlyIncomeAmount );
                Decimal totalIncome = 0;
                totalIncome = (monthlyIncomeAmount*multiplicationFactor)/100;
                system.debug('sum primaryIncome='+totalIncome);
                sumTotalIncome = sumTotalIncome + totalIncome; 
            }
        }
        
        if(totalPreviousIncomes.size()>0){
            
            for(Income__c  prevInc : totalPreviousIncomes){
                System.debug('prevInc='+prevInc);
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                if(thisIncomeScourceNEmpMap.get(prevInc.Income_Status__c+prevInc.Type_of_Income_Source__c) != null){
                    multiplicationFactor = thisIncomeScourceNEmpMap.get(prevInc.Income_Status__c+prevInc.Type_of_Income_Source__c);
                }    
                System.debug('multiplicationFactor='+multiplicationFactor );
                if(prevInc.Monthly_Income__c != null){
                    monthlyIncomeAmount = prevInc.Monthly_Income__c;
                }
                System.debug('monthlyIncomeAmount='+monthlyIncomeAmount);
                Decimal totalIncome =0;
                totalIncome = (monthlyIncomeAmount*multiplicationFactor)/100;
                system.debug('sum previousIncome='+totalIncome);
                sumTotalIncome = sumTotalIncome + totalIncome; 
            }
        }
        
        if(totalSecondaryIncomes.size()>0){
            
            for(Income__c  secondInc: totalSecondaryIncomes){
                System.debug('secondInc'+secondInc);
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                if(thisIncomeScourceNEmpMap.get(secondInc.Income_Status__c+secondInc.Type_of_Income_Source__c) != null){
                    multiplicationFactor = thisIncomeScourceNEmpMap.get(secondInc.Income_Status__c+secondInc.Type_of_Income_Source__c);
                }
                System.debug('multiplicationFactor='+multiplicationFactor);
                if(secondInc.Monthly_Income__c != null){
                    monthlyIncomeAmount = secondInc.Monthly_Income__c;
                }
                System.debug('monthlyIncomeAmount='+monthlyIncomeAmount );
                Decimal totalIncome = 0;
                totalIncome = (monthlyIncomeAmount*multiplicationFactor)/100;
                system.debug('sum secondryIncome='+totalIncome);
                sumTotalIncome = sumTotalIncome + totalIncome; 
            }
        }
        
        if(totalSpouseIncomes.size()>0){
            
            for(Income__c  spouseInc: totalSpouseIncomes){
                System.debug('spouseInc='+spouseInc);
                Decimal multiplicationFactor = 100;
                Decimal monthlyIncomeAmount = 0;
                if(thisIncomeScourceNEmpMap.get(spouseInc.Income_Status__c+spouseInc.Type_of_Income_Source__c) != null){
                    multiplicationFactor = thisIncomeScourceNEmpMap.get(spouseInc.Income_Status__c+spouseInc.Type_of_Income_Source__c);
                }
                System.debug('multiplicationFactor='+multiplicationFactor);
                if(spouseInc.Monthly_Income__c != null){
                    monthlyIncomeAmount = spouseInc.Monthly_Income__c;
                }
                System.debug('monthlyIncomeAmount='+monthlyIncomeAmount );
                Decimal totalIncome = 0;
                totalIncome = (monthlyIncomeAmount*multiplicationFactor)/100;
                system.debug('sum spouseIncome='+totalIncome);
                sumTotalIncome = sumTotalIncome + totalIncome; 
            }
        }
        
        return sumTotalIncome ;
    }
    public static Decimal getTotalExpense(String appID){
        CommonQueryUtil  commonQueries= new CommonQueryUtil();
        List<Expense_Configuration__c> expenseConfigurations = commonQueries.queryExpenseConfiguration();
        List<genesis__Applications__c> queryApp = [select id, Total_Monthly_Expenses__c,Total_Expense__c from genesis__Applications__c WHERE id =: appID];
        Decimal creditCardPayents =  0;
        creditCardPayents =  creditCardPayment(appID);
        System.debug('creditCardPayents='+creditCardPayents);
        
        Decimal livingExpenses = 0;
        livingExpenses = livingExpenses(appID);
        System.debug('livingExpenses ='+livingExpenses);
        
        Decimal residentialExpenses = 0;
        residentialExpenses = residentialExpenses(appID);
        System.debug('residentialExpenses ='+residentialExpenses );
        
        Decimal debtAmount = 0;
        debtAmount = debtAmount(appID);
        
        Decimal totalMonthlyExpenses =0;
        
        if(expenseConfigurations.size()>0){
            Decimal actualExpense = 0;
            Decimal minExpens = 0;
            for(Expense_Configuration__c esxp: expenseConfigurations ){
                
                if(esxp.Type_of_Expense__c != null && esxp.Type_of_Expense__c.equalsIgnoreCase('Credit Card')){
                    if(creditCardPayents!=0){
                        actualExpense = (esxp.Multiplication_Factor__c*creditCardPayents)/100;
                        minExpens = esxp.Max_Cap_Value_Monthly__c;
                        Decimal creditExps =actualExpense>minExpens?actualExpense:minExpens ;
                        totalMonthlyExpenses  = totalMonthlyExpenses +creditExps ;
                        creditCardPayents = creditExps;
                        system.debug('this credit card'+creditExps);
                    }
                }
                if(esxp.Type_of_Expense__c != null && esxp.Type_of_Expense__c.equalsIgnoreCase('Debt')){
                    if(debtAmount != 0){
                        actualExpense = (esxp.Multiplication_Factor__c*debtAmount)/100;
                        minExpens  = esxp.Max_Cap_Value_Monthly__c;
                        Decimal debtExp = actualExpense>minExpens ?actualExpense:minExpens ;
                        totalMonthlyExpenses = totalMonthlyExpenses+debtExp;
                        debtAmount = debtExp;
                        system.debug('this debt'+debtExp);

                    }
                }
                if(esxp.Type_of_Expense__c != null && esxp.Type_of_Expense__c.equalsIgnoreCase('Residential Expenses')){
                    if(residentialExpenses != 0){
                        actualExpense = (esxp.Multiplication_Factor__c*residentialExpenses)/100;
                        system.debug('actualExpense residential Expense '+actualExpense );
                        minExpens  = esxp.Max_Cap_Value_Monthly__c;
                        Decimal resExpfinal = actualExpense>minExpens?actualExpense:minExpens;
                        totalMonthlyExpenses = totalMonthlyExpenses + resExpfinal;
                        residentialExpenses = resExpfinal;
                        system.debug('this residential expense '+resExpfinal);
                    }
                }
                if(esxp.Type_of_Expense__c != null && esxp.Type_of_Expense__c.equalsIgnoreCase('Living Expenses')){
                    if(livingExpenses!=0){
                        actualExpense = (esxp.Multiplication_Factor__c*livingExpenses)/100;
                        minExpens  =  esxp.Max_Cap_Value_Monthly__c;
                        Decimal livingExpfinal = actualExpense>minExpens?actualExpense:minExpens;
                        totalMonthlyExpenses = totalMonthlyExpenses + livingExpfinal;
                        livingExpenses = livingExpfinal; 
                        system.debug('this living expense'+livingExpfinal);
                    }  
                }  
            }
            system.debug('***creditCardPayents**'+creditCardPayents );
        }
        Decimal newtotalMonthlyExpenses = 0;
        /*if(livingExpenses != 0){
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
        if(allRecordsApp !=null && allRecordsApp.size()>0 && allRecordsApp[0].Scoring_Income__c!=null){
            scoringIncome = allRecordsApp[0].Scoring_Income__c;
        }
        
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
        */
        //if(incomeRatio!=null){
            //newtotalMonthlyExpenses = totalMonthlyExpenses*incomeRatio + debtAmount + creditCardPayents;
            //newtotalMonthlyExpenses = queryApp[0].Total_Expense__c;
           newtotalMonthlyExpenses  = totalMonthlyExpenses ;
        //}
        System.debug('newtotalMonthlyExpenses ='+newtotalMonthlyExpenses);
       
        return newtotalMonthlyExpenses;
    }
    public static Decimal getServiceConst(){
        Decimal serviceConst = [Select Serviceability_Const__c, Label from Serviceability__mdt WHERE Label=:'Const'].Serviceability_Const__c;
        return serviceConst;
    }
    public static Decimal residentialExpenses(String appID){
        CommonQueryUtil  commonQueries= new CommonQueryUtil();
        list<Expense__c > totalResidentialExpenses = commonQueries.queryResidentialExpenses(appId);
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
    public static Decimal creditCardPayment(String appID){
        CommonQueryUtil  commonQueries= new CommonQueryUtil();
        list<Expense__c > totalCreditCardPayment = commonQueries.queryCreditCardExpense(appId);
        Decimal sum = 0;
        if(totalCreditCardPayment.size()>0){
            for(Expense__c  exps : totalCreditCardPayment ){
                if(exps.Monthly_Expense__c != null){
                    sum = sum + exps.Monthly_Expense__c;
                }
            }
        }
        
        System.debug('total Credit Card Expense='+sum);
        return sum;
    }
    public static Decimal livingExpenses(String appID){
        CommonQueryUtil  commonQueries= new CommonQueryUtil();
        list<Expense__c > totalLivingExpenses = commonQueries.queryLivingExpenses(appId);
        Decimal sum = 0;
        if(totalLivingExpenses.size()>0){
            for(Expense__c  exps : totalLivingExpenses ){
                if(exps.Monthly_Expense__c != null){
                    sum = sum + exps.Monthly_Expense__c;
                }
            }
        }
        
        System.debug('total Living Expense='+sum);
        return sum;
    }
    public static Decimal debtAmount(String appID){
        CommonQueryUtil  commonQueries= new CommonQueryUtil();
        list<Expense__c > totalDebtAmount = commonQueries.queryDebtRecords(appId);
        Decimal sum = 0;
        if(totalDebtAmount.size()>0){
            for(Expense__c  exps : totalDebtAmount ){
                if(exps.Monthly_Expense__c != null){
                    sum = sum + exps.Monthly_Expense__c;
                }
            }
        }
        
        System.debug('total Debt Expense='+sum);
        return sum;
    }
}