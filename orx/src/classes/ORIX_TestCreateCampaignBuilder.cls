/**
 * @Created By : Mayank Bhardwaj
 * @Date : 12/02/2018
 * @Description : Builder class for Campaign
 **/
@IsTest @TestVisible
private class ORIX_TestCreateCampaignBuilder
{
   //Campaign name
   private String Name ;
   // Active status
   private Boolean IsActive ; 

   
 @TestVisible   
 private ORIX_TestCreateCampaignBuilder()
 {
     
 }
 
  @TestVisible  
  private ORIX_TestCreateCampaignBuilder Name(String Name)
  {
      this.Name =  Name;
      return this;
  }  
    
  @TestVisible  
  private ORIX_TestCreateCampaignBuilder IsActive(Boolean IsActive)
  {
      this.IsActive =  IsActive;
      return this;
  } 
 
   
    @TestVisible
    private List<Campaign > create(Integer count, Boolean isPersisted) {
        
        List<Campaign > lstCampaign  = new List<Campaign >();
        
        for(Integer i = 0; i < count; i++) {
            
            Campaign  objCampaign  = new Campaign ();
            
            if(this.Name != null) {
                objCampaign.Name   = this.Name;
            }
            
            if(this.IsActive != null) {
                objCampaign.IsActive    = this.IsActive ;
            }
            
             lstCampaign.add(objCampaign);
        }
        
        if(isPersisted) {
            insert lstCampaign;
        }
        
        return lstCampaign;
    }  
}