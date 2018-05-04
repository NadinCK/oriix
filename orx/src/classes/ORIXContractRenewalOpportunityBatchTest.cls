/**
 *
 */
@isTest
private class ORIXContractRenewalOpportunityBatchTest {

    static testMethod void contractRenewalOpportunity() {
        // TO DO: implement unit test
        
        TriggerHandler__c customSettingObj = new TriggerHandler__c();
        customSettingObj.Name = 'OpportunityTrigger';
        customSettingObj.ORIX_Is_Active__c = true;
        insert customSettingObj;
        
        List<Account> accountOriginal = new ORIX_TestDataAccountBuilder().name('Test Account').abn('567894321')
                                              .create(1, true);
                                              
        Date todayDate = System.today();
        Date after10Monts = todayDate.addMonths(10);
        Date closeDate = todayDate.addMonths(1);
        
        List<Opportunity> lstOpportunity = new ORIX_TestDataOpportunityBuilder().name('testOpportunity')
                                               .Account(accountOriginal[0].id)
                                               .stageName('Lost')
                                               .closeDate(closeDate)
                                               .create(1, false);
    
        Opportunity testOpportunity =lstOpportunity[0];            
        testOpportunity.ORIX_Stage_Category__c = 'Lost';
        testOpportunity.ORIX_Contract_Expiry_Date__c = after10Monts;
        testOpportunity.ORIX_Loss_Reason__c = 'Price';
        
        insert testOpportunity;
        
        
        ORIXContractRenewalOpportunityBatch batchObj = new ORIXContractRenewalOpportunityBatch();
        Database.executeBatch(batchObj);
        String sch = '0 0 23 * * ?';
        System.schedule('test ORIXContractRenewalOpportunityBatch', sch, batchObj);
        
        
    }
}