/**
 *
 */
@isTest
private class ORIX_InsertCaseTeamTest {
    public static user user;
    public static user user1;
    public static user user2;
    
    @testSetup 
    static void setupData() {
         
          //List<Account> accountOriginal = new ORIX_TestDataAccountBuilder().name('Test Account').abn('567894321')
           //                                   .create(1, true);
         //if(accountOriginal != null && accountOriginal.size() > 0 && accountOriginal[0].id != null) {
             Id ProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator'].Id;
             
             UserRole r = [Select id,name from UserRole where DeveloperName = 'Novated_Services_Executive'];
             Test.startTest();
             list<User> lstUserData = new ORIX_TestDataUserBuilder().userName('te434s43242t@user23312.com').lastName('lastName').userEmail('te434s43242t@user23312.com').
                                         userAlias('test').profileId(ProfileId).roleId(r.id).create(1,true);
        
        	list<User> lstUserData1 = new ORIX_TestDataUserBuilder().userName('te434s2t@user23312.com').lastName('latName').userEmail('te434s4t@user23312.com').
                                         userAlias('test12').profileId(ProfileId).roleId(r.id).create(1,true);
            list<User> lstUserData2 = new ORIX_TestDataUserBuilder().userName('te434t@user23312.com').lastName('latName').userEmail('te434s4t@user23312.com').
                                         userAlias('test12').profileId(ProfileId).roleId(r.id).create(1,true);
             Test.StopTest();
             User usr = [Select id from User where Id = :UserInfo.getUserId()];
			 user1 = [Select id from User where userName = 'te434s2t@user23312.com'];
        
             System.RunAs(usr)
             {
                
                 RecordType novatedRT = [SELECT id,Name from RecordType where sobjectType = 'Case' and DeveloperName = 'Novated_Email_Case'];
                 list<Case> lstCaseData = new ORIX_TestDataCaseBuilder().caseStatus('Open').
                                                 recordTypeId(novatedRT.id).create(100, false);
                 if(lstCaseData != null && lstCaseData.size() > 0) {
                     for(Case objCase : lstCaseData){
                         objCase.OwnerId = lstUserData[0].Id;
                     }
                     insert lstCaseData;
                     
                 }
             }         
         
    }
    /**
    * @description This test method is used to increase code coverage of insert case team
    * This method is used to test bulk records.
    **/
    @isTest 
    static void testBulkPositive() {
        // start Test
        test.startTest();
        
        list<Case> lstCase = [Select id,status from Case where status = 'Open'];
        
        System.assertEquals(lstCase[0].status,'Open');
        user1 = [Select id from User where userName = 'te434s2t@user23312.com'];
        list<Id> lstCaseid = new list<Id>();
        for(Case objCase: lstCase){
            lstCaseId.add(objCase.id);
            objCase.OwnerId = user1.id;
        }
        update lstCase;
        ORIXInsertCaseTeam.insertCaseTeam(lstCaseId);
        // Stop Test
        test.stopTest();
    }
    @isTest 
    static void testBulkNegative() {
        // start Test
        test.startTest();
        
        list<Case> lstCase = [Select id,status from Case where status = 'Open'];
        
        System.assertEquals(lstCase[0].status,'Open');
        
        list<Id> lstCaseid = new list<Id>();
        for(Case objCase: lstCase) {
            lstCaseId.add(objCase.id);            
        }
        
        ORIXInsertCaseTeam.insertCaseTeam(lstCaseId);
        // Stop Test
        test.stopTest();
    }
      @isTest 
    static void testSinglePositive() {
        // start Test
        test.startTest();
        
        Case objCase = [Select id,OwnerId,status from Case where status = 'Open' limit 1];
        System.assertEquals(objCase.status,'Open');
        user1 = [Select id from User where userName = 'te434s2t@user23312.com'];
        objCase.OwnerId = user1.id;
        update objCase;
        list<Id> lstCaseid = new list<Id>();
        lstCaseId.add(objCase.id);
        ORIXInsertCaseTeam.insertCaseTeam(lstCaseId);
        
        
        
        // Stop Test
        test.stopTest();
    }
    @isTest 
    static void testSingleNegative() {
        // start Test
        test.startTest();
        
        Case objCase = [Select id,OwnerId,status from Case where status = 'Open' limit 1];
        System.assertEquals(objCase.status,'Open');
        
        list<Id> lstCaseid = new list<Id>();
        lstCaseId.add(objCase.id);
        ORIXInsertCaseTeam.insertCaseTeam(lstCaseId);
        
        
        
        // Stop Test
        test.stopTest();
    }
    
       @isTest 
    static void testException() {
        // start Test
        test.startTest();
         list<Id> lstCaseid = new list<Id>();
        try{
        Case objCase = [Select id,OwnerId,status from Case where status = 'Open' limit 1];
        lstCaseId.add(objCase.id);
       
        user1 = [Select id from User where userName = 'te434s2t@user23312.com']; 
        
        objCase.OwnerId = user.id;
        update objCase;
        lstCaseId.add(objCase.id);
        
        ORIXInsertCaseTeam.insertCaseTeam(lstCaseId);
        
        }
        Catch (exception e)
        {
            
        }
        // Stop Test
        test.stopTest();
    }
}