/**
 * @Created By : Priyank Rajvanshi
 * @Date : 16/01/2018
 * @Description : Test class for Lead trigger & handler
 **/
@isTest(seeAllData=false)
private class ORIX_CalcuatefourMonthDateTest {

     @testSetup 
     static void setupData() {
        
        List<Account> accountOriginal = new ORIX_TestDataAccountBuilder().name('Test Account').abn('567894321')
                                             .create(1, true);
        list<Asset> lstAssetData =  new ORIX_TestDataAssetBuilder().assetName('Test').accountId(accountOriginal[0].id).create(100, false); 
        if(lstAssetData != null && lstAssetData.size() > 0) {
            for(Asset objAsset : lstAssetData) {
                objAsset.ORIX_Contract_Expiry_Date__c = system.today().addMonths(-4);
            }
        }
        insert lstAssetData ;
        
        list<Asset> lstAssetDataNew =  new ORIX_TestDataAssetBuilder().assetName('Test').accountId(accountOriginal[0].id).create(100, false); 
        if(lstAssetDataNew != null && lstAssetDataNew.size() > 0) {
            for(Asset objAsset : lstAssetDataNew ) {
                objAsset.ORIX_Contract_Expiry_Date__c = system.today().addMonths(-2);
            }
        }
        insert lstAssetDataNew;
         
       List<Asset> lstAssetDataN =  new ORIX_TestDataAssetBuilder().assetName('Test Name').accountId(accountOriginal[0].id).create(100, false); 
        if(lstAssetDataN != null && lstAssetDataN.size() > 0) {
            for(Asset objAsset : lstAssetDataN ) {
                objAsset.ORIX_Contract_Expiry_Date__c = system.today().addMonths(6);
            }
        }
        insert lstAssetDataN;
    }
     
     /**
    * @description This test method is used to increase code coverage of ORIX_CalcuatefourMonthDate
    * it is for bulk positive scenario.
    **/
    
    @isTest 
    static void testAllBulkPositive() {
        // start Test
        test.startTest();
        list<Id> lstAssetid = new list<Id>();
        list<Asset> lstAsset = [Select id,Name,ORIX_Contract_Expiry_Date__c  from Asset where name = 'Test Name'];
        System.assertEquals(lstAsset[0].Name,'Test Name');
         Date tdyDate = date.today();
         system.debug('Difference12--'+tdyDate.monthsBetween(lstAsset[0].ORIX_Contract_Expiry_Date__c));
        for(Asset obj: lstAsset) {
            lstAssetid.add(obj.id);
        }
       
        ORIX_CalcuatefourMonthDate.updateDate(lstAssetid);
        // Stop Test
        test.stopTest();
    }
    /**
    * @description This test method is used to increase code coverage of ORIX_CalcuatefourMonthDate
    * it is for bulk negative scenario.
    **/
     @isTest 
    static void testBulkNegative() {
        // start Test
        test.startTest();
        list<Id> lstAssetid = new list<Id>();
        list<Asset> lstAsset = [Select id,Name,ORIX_Contract_Expiry_Date__c  from Asset where name = 'Test'];
        
        System.assertEquals(lstAsset[0].Name,'Test');
        for(Asset obj: lstAsset) {
            obj.ORIX_Contract_Expiry_Date__c =null;
            lstAssetid.add(obj.id);
        }
        update lstAsset;
        
        ORIX_CalcuatefourMonthDate.updateDate(lstAssetid);
        // Stop Test
        test.stopTest();
    }
    /**
    * @description This test method is used to increase code coverage of ORIX_CalcuatefourMonthDate
    * it is for single negative scenario.
    **/
     @isTest 
    static void testSingleNegative() {
        // start Test
        test.startTest();
        list<Id> lstAssetid = new list<Id>();
        list<Asset> lstAsset = [Select id,Name,ORIX_Contract_Expiry_Date__c  from Asset where name = 'Test' ];
        lstAsset[0].ORIX_Contract_Expiry_Date__c  = null;
        update lstAsset;
        System.assertEquals(lstAsset[0].Name,'Test');
       
        lstAssetid.add(lstAsset[0].id);
        
        ORIX_CalcuatefourMonthDate.updateDate(lstAssetid);
        // Stop Test
        test.stopTest();
    }
    /**
    * @description This test method is used to increase code coverage of ORIX_CalcuatefourMonthDate
    * it is for single positive scenario.
    **/
    @isTest 
    static void testSinglePositive() {
        // start Test
        test.startTest();
        list<Id> lstAssetid = new list<Id>();
        list<Asset> lstAsset = [Select id,Name,ORIX_Contract_Expiry_Date__c  from Asset where name = 'Test Name'];
        
        System.assertEquals(lstAsset[0].Name,'Test Name');
        
        lstAssetid.add(lstAsset[0].id);
        
        ORIX_CalcuatefourMonthDate.updateDate(lstAssetid);
        // Stop Test
        test.stopTest();
    }
    /**
    * @description This test method is used to increase code coverage of ORIX_CalcuatefourMonthDate
    * it is for exception scenario.
    **/
    @isTest 
    static void testException() {
       // start Test
        test.startTest();
        list<Id> lstAssetid = new list<Id>();
        
        list<Asset> lstAsset = [Select id,Name,ORIX_Contract_Expiry_Date__c  from Asset where name = 'Test' limit 1];
        
        try{
            System.assertEquals(lstAsset[0].Name,'Test');
            lstAsset[0].Name = null;
            update lstAsset;
            lstAssetid.add(lstAsset[0].id);
        
        ORIX_CalcuatefourMonthDate.updateDate(lstAssetid);
        }
        catch(Exception error){
            
        } 
        // Stop Test
        test.stopTest();
    }
}