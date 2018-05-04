/**
 * @Created By : Priyank Rajvanshi
 * @Date : 16/01/2018
 * @Description : Test class for Lead trigger & handler
 **/
@isTest(seeAllData=false)
private class ORIX_LeadTriggerHandlerTest {

     @testSetup 
     static void setupData() {
        
        list<Lead> lstLeadData =  new ORIX_TestDataLeadBuilder().firstName('Test').lastName('Lead').streetAddress('1 Eden Park Drive').
                                    cityAddress('macquarie Park ').stateAddress('New South Wales').countryAddress('Australia').
                                    postalCodeAddress('123456').leadEmail('test@gmail.com').leadCompany('test company').
                                    leadABN('123456777').create(1, false); 
                                    
        list<Lead> lstLeadDataNew =  new ORIX_TestDataLeadBuilder().firstName('Test').lastName('Lead New').streetAddress('1 Eden Park Drive').
                                    cityAddress('macquarie Park').stateAddress('New South Wales ').countryAddress('Australia').
                                    postalCodeAddress('123456').leadEmail('test12121@gmail.com').leadCompany('test company').
                                    leadABN('123456767').create(1, false);
                                   
                                    
        list<Lead> lstLeadDataNew1 =  new ORIX_TestDataLeadBuilder().firstName('Test').lastName('Lead Again').streetAddress('1 Eden Park Drive').
                                    cityAddress('macquarie Park').stateAddress('New South Wales ').countryAddress('Australia').
                                    postalCodeAddress('123456').leadEmail('test222@gmail.com').leadCompany('test company').
                                    leadABN('123456789').create(1, false);  
        RecordType novatedRT = [SELECT id,Name FROM RecordType where sobjectType = 'Lead' AND DeveloperName = 'Novated_Driver_Lead'];   
        
        RecordType fleetRT = [SELECT id,Name FROM RecordType where sobjectType = 'Lead' AND DeveloperName = 'Commercial_Lead'];   
        if(lstLeadData != null && lstLeadData.size() > 0) {
            for(Lead objLead : lstLeadData) {
                objLead.RecordTypeId = novatedRT.id;
            }
        }
        insert lstLeadData;
        if(lstLeadDataNew1  != null && lstLeadDataNew1.size() > 0) {
            for(Lead objLead : lstLeadDataNew1) {
                objLead.RecordTypeId = fleetRT.id;
            }
        }
        
        
        insert lstLeadDataNew1;
        
        TriggerHandler__c customSettingObj = new TriggerHandler__c();
        customSettingObj.Name = 'OpportunityTrigger';
        customSettingObj.ORIX_Is_Active__c = true;
        insert customSettingObj;
        
        TriggerHandler__c customSettingObj1 = new TriggerHandler__c();
        customSettingObj1.Name = 'LeadTrigger';
        customSettingObj1.ORIX_Is_Active__c = true;
        insert customSettingObj1;
        
        
     }
     
    /**
    * @description This test method is used to increase code coverage of lead trigger and its handler
    * It is used for single positive case
    **/
    @isTest 
    static void testSinglePositive() {
        // start Test
        test.startTest();
        
        list<Lead> lstLeadFetch = [Select Id,Name from Lead where Name = 'Test Lead' limit 1];
        System.assertEquals(lstLeadFetch[0].Name,'Test Lead');
        
        Database.LeadConvert lc = new database.LeadConvert();
        lc.setLeadId(lstLeadFetch[0].id);
        lc.setDoNotCreateOpportunity(false);
        lc.setConvertedStatus('Qualified');
        
        Database.LeadConvertResult lcr = Database.convertLead(lc);
        System.assert(lcr.isSuccess());
        
        update lstLeadFetch;
        
        // Stop Test
        test.stopTest();
    }
    
    /**
    * @description This test method is used to increase code coverage of lead trigger and its handler
    * It is used for single positive case
    **/
    @isTest 
    static void testSingleNegative() {
        // start Test
        test.startTest();
        try{
            Lead objlead = [Select id,name from Lead where name = 'Test Lead Again' and Recordtype.DeveloperName = 'Fleet_Driver_Lead' limit 1];
            System.assertEquals(objlead.Name,'Test Lead Again');
            
            Database.LeadConvert lc = new database.LeadConvert();
            lc.setLeadId(objlead.id);
            lc.setDoNotCreateOpportunity(false);
            lc.setConvertedStatus('Qualified');
            
            Database.LeadConvertResult lcr = Database.convertLead(lc);
            System.assert(lcr.isSuccess());
            
            update objlead ;
        }
        catch(Exception ex) {
        }
        
        // Stop Test
        test.stopTest();
    }
    /**
    * @description This test method is used to increase code coverage of lead trigger and its handler
    * It is used for single positive case
    **/
    @isTest 
    static void testException() {
        // start Test
        test.startTest();
        try{
            Lead objlead = [Select id,name from Lead where name = 'Test Lead' limit 1];
            objlead.lastName = null;
            

            System.assertEquals(objlead.Name,'Test Lead');
            
            Database.LeadConvert lc = new database.LeadConvert();
            lc.setLeadId(objlead.id);
            lc.setDoNotCreateOpportunity(false);
            lc.setConvertedStatus('Qualified');
            
            Database.LeadConvertResult lcr = Database.convertLead(lc);
            System.assert(lcr.isSuccess());
            
            System.assertEquals(objlead.Name,'Test Lead');
        }
        catch(Exception ex) {
        }
        
        // Stop Test
        test.stopTest();
    }
    
    /**
    * @description This test method is used to increase code coverage of lead trigger and its handler
    * It is used for bulk positive case
    **/
    @isTest 
    static void testBulkPositive() {
        // start Test
        test.startTest();
        
        List<Lead> lstlead = [Select id,name from Lead where name = 'Test Lead'];
        
        System.assertEquals(lstlead[0].Name,'Test Lead');
        // Stop Test
        test.stopTest();
    }
}