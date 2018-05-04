public class CommonQueryUtil{
    public List<Income_Configuration__c> incomeConfiguration;
    public list<Income__c> primaryIncomes;
    public list<Income__c> previousIncomes;
    public list<Income__c> secondaryIncomes;
    public list<Income__c> spouseIncome;
    List<Expense_Configuration__c> expenseConfigurations;
    public List<Expense__c> creditCardExpense;
    public List<Expense__c> livingExpense;
    public List<Expense__c> residentialExpenses;
    public List<Expense__c> totalDebts;
     static List<genesis__Applications__c> queryApplicationObject(String appId){
        
        mfiflexUtil.ExecutionContext ec = mfiflexUtil.ExecutionContext.getExecContext();
        mfiflexUtil.ObjectCache loanApplication = ec.createObject('Application',
                                                                  'genesis__Applications__c',' ');
        String whereClause='';
        loanApplication.addNamedParameter('loanAppId',appId);
        SObjectType applicationType = Schema.getGlobalDescribe().get('genesis__Applications__c');
        
        Map<String,Schema.SObjectField> mfields = applicationType.getDescribe().fields.getMap();
        for(String field:mfields.keyset()){  
            loanApplication.addFields(field);
        }
        whereClause = 'Id=:loanAppId';
        loanApplication.setWhereClause(whereClause);
        
        loanApplication.buildQuery();
        String loansQuery = loanApplication.getQuery();
        System.debug('loansQuery='+loansQuery);
        List<genesis__Applications__c> loanApplicationres = (List<genesis__Applications__c>) loanApplication.executeQuery().getRecords();
        
        return loanApplicationres;
    }
    
    public List<Income_Configuration__c> queryIncomeConfiguration(){
        
        incomeConfiguration = [select id,Income_Source__c,Employment_Type__c,Multiplication_Factor__c,name from Income_Configuration__c];
        
        return incomeConfiguration;
    }
    public List<Income__c> queryPrimaryIncomes(String appId){
        
        primaryIncomes = [select id,Income_Status__c,Monthly_Income__c,name,Type_of_Income_Source__c from Income__c where Application__c=:appId and Income_Status__c=:System.Label.INCOME_PRIMARY];
        
        return primaryIncomes;
    }
    public List<Income__c> queryPreviousIncomes(String appId){
        
        previousIncomes = [select id,Income_Status__c,Monthly_Income__c,name,Type_of_Income_Source__c from Income__c where Application__c=:appId and Income_Status__c=:System.Label.INCOME_PREVIOUS];
        
        return previousIncomes;
    }
    public List<Income__c> querySecondaryIncomes(String appId){
        
        secondaryIncomes = [select id,Income_Status__c,Monthly_Income__c,name,Type_of_Income_Source__c from Income__c where Application__c=:appId and Income_Status__c=:System.Label.INCOME_SECONDARY];
        
        return secondaryIncomes;
    }
    public List<Income__c> querySpouseIncome(String appId){
        
        spouseIncome = [select id,Income_Status__c,Monthly_Income__c,name,Type_of_Income_Source__c from Income__c where Application__c=:appId and Income_Status__c=:System.Label.INCOME_SPOUSE];
        
        return spouseIncome;
    }
    public List<Expense_Configuration__c> queryExpenseConfiguration(){
        
        expenseConfigurations = [select id,Type_of_Expense__c,Max_Cap_Value_Monthly__c,Multiplication_Factor__c,name from Expense_Configuration__c];
        
        return expenseConfigurations;
    }
    public List<Expense__c> queryCreditCardExpense(String appId){
        
        creditCardExpense=  [select id,Expense_Value__c,Monthly_Expense__c,name from Expense__c where Type__c=:System.Label.CREDIT_CARD_EXPENSE AND Application__c=:appId];
        
        return creditCardExpense;
    }
    public  List<Expense__c> queryLivingExpenses(String appId){
        
        livingExpense = [select id,Monthly_Expense__c,Expense_Value__c,name from Expense__c where Type__c=:System.Label.LIVING_EXPENSE AND Application__c=:appId];
        
        return livingExpense;
    }
    public List<Expense__c> queryResidentialExpenses(String appId){
        
        residentialExpenses = [select id,Monthly_Expense__c,Expense_Value__c,name from Expense__c where Type__c=:System.Label.RESIDENTIAL_EXPENSE  AND Application__c=:appId];
        
        return residentialExpenses;
    }
    public List<Expense__c>  queryDebtRecords(String appId){
        
        totalDebts = [select id,Monthly_Expense__c,Type__c,name from Expense__c where Application__c=:appId and Type__c=:System.Label.DEBT_TYPE_EXPENSE ];
        
        return totalDebts;
    }
}