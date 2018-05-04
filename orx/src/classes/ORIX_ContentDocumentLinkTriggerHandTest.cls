/**
 * @auther      : Mayank Bhardwaj
 * @date        : 27/11/2017
 * @description : This test class used to cover the ORIX_ContentDocumentLinkTrigger
 *                  
 **/
@isTest
public class ORIX_ContentDocumentLinkTriggerHandTest {
    public static List<User> lstUser;
    public static List<Task> lstTask;
    public static List<Task> lstTask2;
    public static List<ContentVersion> lstContentVersion;
    public static List<ContentDocumentLink>  lstContentDocument;
    @isTest 
    static void testSinglePositive() {
        // start Test
        test.startTest();
        
        string ProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator'].Id;  
       UserRole r = new UserRole( Name = 'Novated Services Executive');
       insert r;
        system.assertNotEquals(r.id,null);  
        lstUser = new ORIX_TestDataUserBuilder().userName('john11@acme.com').lastName('abc').userEmail('abc@gmail.com').
                                                           userAlias('tstalias').profileId(ProfileId).roleId(r.id).
                                                           create(1,true);
       system.assertNotEquals(lstUser[0].id,null);
       system.runAs(lstUser[0]) 
       {
       lstTask = new  ORIX_TestCreateTask().taskUserId(lstUser[0].id).taskSubject('Call').taskstatus('In Progress').create(1,true);
       Blob beforeblob=Blob.valueOf('Unit Test Attachment Body'); 
       lstContentVersion = new ORIX_TestCreateContentVersionBuilder(). title('test content trigger').PathOnClient('test').VersionData(beforeblob).create(1,true);
       system.assertNotEquals(lstContentVersion[0].id,null); 
       List<ContentDocument> documents = [SELECT Id, Title, LatestPublishedVersionId FROM ContentDocument];
    
       lstContentDocument = new ORIX_TestContentDocumentBuilder().LinkedEntityId(lstTask[0].id).ShareType('V').ContentDocumentId(documents[0].id).Visibility('AllUsers').create(1,true);
        
       delete lstContentDocument;  
        
        test.stopTest();
       } 
    }
    
    @isTest 
    static void testBulkPositive() {
        // start Test
        test.startTest();
        
        string ProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator'].Id;  
       UserRole r = new UserRole( Name = 'Novated Services Executive');
       insert r;
        system.assertNotEquals(r.id,null);  
        lstUser = new ORIX_TestDataUserBuilder().userName('john11@acme.com').lastName('abc').userEmail('abc@gmail.com').
                                                           userAlias('tstalias').profileId(ProfileId).roleId(r.id).
                                                           create(1,true);
       system.assertNotEquals(lstUser[0].id,null);
       system.runAs(lstUser[0]) 
       {
       lstTask = new  ORIX_TestCreateTask().taskUserId(lstUser[0].id).taskSubject('Call').taskstatus('In Progress').create(1,true);
       Blob beforeblob=Blob.valueOf('Unit Test Attachment Body'); 
       lstContentVersion = new ORIX_TestCreateContentVersionBuilder(). title('test content trigger').PathOnClient('test').VersionData(beforeblob).create(1,true);
       system.assertNotEquals(lstContentVersion[0].id,null); 
       List<ContentDocument> documents = [SELECT Id, Title, LatestPublishedVersionId FROM ContentDocument];
      
       lstContentDocument = new ORIX_TestContentDocumentBuilder().LinkedEntityId(lstTask[0].id).ShareType('V').ContentDocumentId(documents[0].id).Visibility('AllUsers').create(1,true);
        
       delete lstContentDocument;  
        
        test.stopTest();
        }
        
    }
}