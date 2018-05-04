@IsTest @TestVisible
private class ORIX_TestContentDocumentBuilder 
{
    //recordId
   private String LinkedEntityId;
   // ShareType
   private string ShareType; 
   // ContentDocumentId
   private string ContentDocumentId; 
   // Record Visibility 
   private string Visibility ; 
     public static List<User> lstUser;
     //list of users
    public static List<Task> lstTask;
    //list of tasks

    
  @TestVisible    
  private ORIX_TestContentDocumentBuilder()
  {
      
  }
    
     @TestVisible  
  private ORIX_TestContentDocumentBuilder Visibility (String Visibility )
  {
      this.Visibility  =  Visibility;
      return this;
  }  
    
  @TestVisible  
  private ORIX_TestContentDocumentBuilder LinkedEntityId(string LinkedEntityId  )
  {
      this.LinkedEntityId   =  LinkedEntityId ;
      return this;
  } 
    
  @TestVisible  
  private ORIX_TestContentDocumentBuilder ShareType(string ShareType)
  {
      this.ShareType  =  ShareType ;
      return this;
  } 
    
  @TestVisible  
  private ORIX_TestContentDocumentBuilder ContentDocumentId(string ContentDocumentId)
  {
      this.ContentDocumentId  =  ContentDocumentId ;
      return this;
  }    
  
   @TestVisible
   private List<ContentDocumentLink > create(Integer count, Boolean isPersisted) {
        
        List<ContentDocumentLink> lstContentDocumentLink  = new List<ContentDocumentLink>();
        
        for(Integer i = 0; i < count; i++) {
            
            ContentDocumentLink  objContentDocumentLink  = new ContentDocumentLink ();
           
            if(this.LinkedEntityId   != null) {
                objContentDocumentLink.LinkedEntityId  = this.LinkedEntityId  ;
            }
            
            if(this.ShareType  != null) {
                objContentDocumentLink.ShareType   = this.ShareType ;
            }
            
           if(this.ContentDocumentId   != null) {
                objContentDocumentLink.ContentDocumentId   = this.ContentDocumentId ;
            } 
            
            if(this.Visibility != null) {
                objContentDocumentLink.Visibility   = this.Visibility;
            }
     
             lstContentDocumentLink.add(objContentDocumentLink);
        }
        
        if(isPersisted) {
            insert lstContentDocumentLink;
        }
        
        return lstContentDocumentLink;
    }     
    
    
      
    //ContentDocument object does not allow insert DML operation in Salesforce,
    // but we can create it through the ContentVersion object, without ContentDocumentId, 
    // then a new version of ContentDocument will be created
    
   @TestVisible
    public static testMethod list<ContentDocument> createContentDocument() {
        List<ContentDocument> documents ;
        List<ContentDocumentLink> doclink ;
        string ProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator'].Id;  
       UserRole r = new UserRole( Name = 'Novated Services Executive');
       insert r;
        lstUser = new ORIX_TestDataUserBuilder().userName('xyz@acme.com').lastName('abc').userEmail('abc@gmail.com').
                                                           userAlias('tstalias').profileId(ProfileId).roleId(r.id).
                                                           create(1,true);
       system.runAs(lstUser[0]) 
       {
       lstTask = new  ORIX_TestCreateTask().taskUserId(lstUser[0].id).taskSubject('Call').taskstatus('In Progress').create(1,true);
       
    ContentVersion contentVersion_1 = new ContentVersion(
      Title = 'Test',
      PathOnClient = 'test.jpg',
      VersionData = Blob.valueOf('Test Content'),
      IsMajorVersion = true
    );
    insert contentVersion_1;
    
    ContentVersion contentVersion_2 = [SELECT Id, Title, ContentDocumentId FROM ContentVersion WHERE Id = :contentVersion_1.Id LIMIT 1];
  documents = [SELECT Id, Title, LatestPublishedVersionId FROM ContentDocument where id= :contentVersion_2.ContentDocumentId  ];
           documents[0].Title='testtt';
           update documents; 
       ID    docid=documents[0].id;
       ContentDocumentLink cdl = New ContentDocumentLink();
cdl.LinkedEntityId = lstTask[0].id; // update opportunity id here
cdl.ContentDocumentId = documents[0].Id;
cdl.shareType = 'V';
insert cdl;    
         
    
  }
        
    return documents;
    }
    
}