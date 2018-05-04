/**

 */
@isTest(seeAllData=false)
private class ORIXProductTriggerHandlerTest {

    @testSetup 
     static void setupData() {
        
        TriggerHandler__c customSettingObj = new TriggerHandler__c();
        customSettingObj.Name = 'OpportunityLineItemTrigger';
        customSettingObj.ORIX_Is_Active__c = true;
        insert customSettingObj;
        
        List<Account> accountOriginal = new ORIX_TestDataAccountBuilder().name('Test Account').abn('567894321')
                                              .create(1, true);
            
            
        List<ORIX_KPI__c> lstKPIData = new ORIXTestDataKPIBuilder().startDate(system.today().addDays(-10)).
                                            EndDate(system.today().addDays(10)).create(1,true);
                                                    
        Date todayDate = System.today();
        Date after10Monts = todayDate.addMonths(10);
        Date closeDate = todayDate.addMonths(1);
        
        TriggerHandler__c customSettingObj1 = new TriggerHandler__c();
        customSettingObj1.Name = 'OpportunityTrigger';
        customSettingObj1.ORIX_Is_Active__c = true;
        insert customSettingObj1;
        
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
        
        Product2 objProduct = new Product2();
        objProduct.Name = 'test';
        objProduct.ProductCode = 'test';
        objProduct.IsActive = true;
        insert objProduct;
        
        Id pricebookId2 = Test.getStandardPricebookId();
        PricebookEntry objPricebookEntry = new PricebookEntry(
                                                    UnitPrice = 500000,
                                                    PriceBook2Id = pricebookId2,
                                                    Product2Id = objProduct.id,
                                                    //UseStandardPrice = true,
                                                    IsActive = true
                                                    );
        insert objPricebookEntry;
        
        List<OpportunityLineItem> lstOPLI = new ORIXTestDataProductBuilder().baseManagementFee(20).fleetSize(20).
                                                pricebookEntry(objPricebookEntry.id).opportunityId(testOpportunity.id).create(2,true);
        lstOPLI[0].ORIX_Primary_Product__c = true;
        lstOPLI[1].ORIX_Primary_Product__c = true;
        update lstOPLI;
     }
     /**
    * @description 
    **/
    @isTest 
    static void testProductTriggerHandler() {
        // start Test
        test.startTest();
        OpportunityLineItem objOPLI = [Select id,name,ORIX_Base_Management_Fee__c from OpportunityLineItem where ORIX_Base_Management_Fee__c = 20 limit 1];
        
        System.assertEquals(objOPLI.ORIX_Base_Management_Fee__c,20);
        // Stop Test
        test.stopTest();
    }
    @isTest 
    static void testProductTriggerHandler1() {
        // start Test
        test.startTest();
        OpportunityLineItem objOPLI = [Select id,name,ORIX_Base_Management_Fee__c from OpportunityLineItem where ORIX_Base_Management_Fee__c = 20 limit 1];
        
        System.assertEquals(objOPLI.ORIX_Base_Management_Fee__c,20);
        delete objOPLI;
        
        // Stop Test
        test.stopTest();
    }
}