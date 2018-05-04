/**
 * @auther      : Anjali Gairola
 * @date        : 12/03/2018
 * @description : This test class used to cover the ORIX_CountAttachment Trigger
 *                  
 **/
@isTest
public class ORIX_CountAttachmentHandlerTracker {


    public static List<User> lstUser;
    public static List<Task> lstTask;
    public static List<Task> lstTask2;
   public static List<User> lstUser1;
      public static list<ContentDocument>  lstContentDocument;

    @isTest 
    static void testSinglePositive() {
        // start Test
        test.startTest();
                string ProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator'].Id;  
       UserRole r = new UserRole( Name = 'Novated Services Executive');
       insert r;
      //  system.assertNotEquals(r.id,null);  
        lstUser1 = new ORIX_TestDataUserBuilder().userName('xyz1@acme.com').lastName('abc1').userEmail('abc@g1mail.com').
                                                           userAlias('stalias').profileId(ProfileId).roleId(r.id).
                                                           create(1,true);
     //  system.assertNotEquals(lstUser[0].id,null);
      
        lstContentDocument = ORIX_TestContentDocumentBuilder.createContentDocument();
        system.runAs(lstUser1[0]) 
       {
       delete lstContentDocument;  
       }
        test.stopTest();
        }
        
    }