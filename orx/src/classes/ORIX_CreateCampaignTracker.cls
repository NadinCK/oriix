/**
 * @Created By : Mayank Bhardwaj
 * @Date : 09/02/2018
 **/
@isTest
public class ORIX_CreateCampaignTracker {
    
    @testSetup 
     static void setupData() 
     {
       List<Campaign > lstCampaign  = new ORIX_TestCreateCampaignBuilder().Name('TestName').IsActive(true).create(1,true);
       System.assertEquals(lstCampaign[0].Name,'TestName');
       List<Event> lstEvent = new ORIX_TestCreateEventBuilder().Subject('testSub').Agenda(lstCampaign[0].id).
                                  StartDateTime(System.now()).EndDateTime(System.now()+1).
                                  create(1,true);
      System.assertEquals(lstEvent[0].Subject,'testSub');
     }  

       /**
    * @description This test method is used to increase code coverage of CreateCompaign Class
    * It is used for single positive case
    **/
    @isTest 
    static void testSinglePositive() {
        // start Test
        test.startTest();
       List<Event> lstEvent = [Select id,Subject,StartDateTime,EndDateTime,ORIX_Agenda__c from Event
                                      Where Subject =: 'testSub'];
      List<Id> lstId = new List<Id>(); 
      lstId.add(lstEvent[0].id);
      ORIX_CreateCampaign.createCampaign(lstId);
    }
    
           /**
    * @description This test method is used to increase code coverage of CreateCompaign Class
    * It is used for Bulk positive case
    **/
    @isTest 
    static void testBulkPositive() {
        // start Test
        test.startTest();
       List<Event> lstEvent = [Select id,Subject,StartDateTime,EndDateTime,ORIX_Agenda__c from Event
                                      Where Subject =: 'testSub'];
      List<Id> lstId = new List<Id>(); 
      for(Event evnt : lstEvent)
      {
        lstId.add(evnt.id);  
      }
      
      ORIX_CreateCampaign.createCampaign(lstId);
    }
    
           /**
    * @description This test method is used to increase code coverage of CreateCompaign Class
    * It is used for Exception case
    **/
    @isTest 
    static void testException() {
        // start Test
        test.startTest();
       List<Event> lstEvent = [Select id,Subject,StartDateTime,EndDateTime,ORIX_Agenda__c from Event
                                      Where Subject =: 'testSub'];
      List<Id> lstId = new List<Id>(); 
      for(Event evnt : lstEvent)
      {
        lstId.add(evnt.id);  
      }
      
      ORIX_CreateCampaign.createCampaign(lstId);
    }
}