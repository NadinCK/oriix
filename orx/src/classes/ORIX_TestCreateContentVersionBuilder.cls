/**
 * @Created By : Mayank Bhardwaj
 * @Date : 09/02/2018
 * @Description : Builder class for Task
 **/
@IsTest @TestVisible
private class ORIX_TestCreateContentVersionBuilder 
{
   //title
   private string title;
   //PathOnClient
   private string PathOnClient;
   //VersionData
   private Blob VersionData;
    
    @TestVisible
    private ORIX_TestCreateContentVersionBuilder()
    {
        
    }
    
    @TestVisible
    private ORIX_TestCreateContentVersionBuilder title(String title)
    {
        this.title = title;
        return this;
    }
    
    @TestVisible
    private ORIX_TestCreateContentVersionBuilder PathOnClient(String PathOnClient)
    {
        this.PathOnClient = PathOnClient;
        return this;
    }
    
    @TestVisible
    private ORIX_TestCreateContentVersionBuilder VersionData(Blob VersionData)
    {
        this.VersionData = VersionData;
        return this;
    }
   
    @TestVisible
    private List<ContentVersion> create(Integer count, Boolean isPersisted) {
        
        List<ContentVersion> lstContentVersion = new List<ContentVersion>();
        
        for(Integer i = 0; i < count; i++) 
        { 
            ContentVersion objContentVersion = new ContentVersion();
            
            if(this.title != null) {
                objContentVersion.title   = this.title;
            }
            
            if(this.PathOnClient != null) {
                objContentVersion.PathOnClient    = this.PathOnClient;
            }
            
            if(this.VersionData  != null) {
                objContentVersion.VersionData    = this.VersionData ;
            }
            
            lstContentVersion.add(objContentVersion);
        }
        
        if(isPersisted) {
            insert lstContentVersion;
        }
        
        return lstContentVersion;
    }  
}