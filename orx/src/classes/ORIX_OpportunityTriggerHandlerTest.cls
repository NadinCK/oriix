/**
 
 * 
 */
@isTest(seeAllData=false)
private class ORIX_OpportunityTriggerHandlerTest {

    /**
    * @description below test setup method will be invoked to create Account & Opportunity
    **/  
     @testSetup 
     static void setupData() {
         
        TriggerHandler__c customSettingObj = new TriggerHandler__c();
        customSettingObj.Name = 'OpportunityTrigger';
        customSettingObj.ORIX_Is_Active__c = true;
        insert customSettingObj;
         
         List<Account> accountOriginal = new ORIX_TestDataAccountBuilder().name('Test Account').abn('567894321')
                                              .create(1, true);
            
            
        List<ORIX_KPI__c> lstKPIData = new ORIXTestDataKPIBuilder().startDate(system.today().addDays(-10)).
                                            EndDate(system.today().addDays(10)).create(1,true);
                                                    
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
        
        testOpportunity.stageName = 'Cumulative Buying Platform';
        testOpportunity.ORIX_Stage_Category__c = 'Cumulative Buying Platform';
        update testOpportunity;
     }
     
    /**
    * @description 
    **/
    @isTest 
    static void testopportunityTriggerHandler() {
        // start Test
        test.startTest();
        Opportunity objOpp = [Select id,name from Opportunity where name = 'testOpportunity'];
        
        System.assertEquals(objOpp.Name,'testOpportunity');
        // Stop Test
        test.stopTest();
    }
}