/**
 * @Created By : Priyank Rajvanshi
 * @Date : 16/01/2018
 * @Description : Builder class for Lead
 **/
@IsTest @TestVisible
private class ORIX_TestDataCaseBuilder {
    
    //variable to set accountId
    private id accountId;
    //variable to set case status
    private string caseStatus;
    //variable to set recordtype id
    private id recordTypeId;
    
    @TestVisible
    private ORIX_TestDataCaseBuilder(){
        
    }
    
     /**
    * @description It will set account Id
    * @param name accountId
    * @return the Returns accountId
    */
   @TestVisible
   private ORIX_TestDataCaseBuilder accountId(String accountId) {
       
       this.accountId= accountId;
       return this;
   }
   
   /**
    * @description It will set case status
    * @param name caseStatus
    * @return the Returns caseStatus
    */
   @TestVisible
   private ORIX_TestDataCaseBuilder caseStatus(String caseStatus) {
      
       this.caseStatus= caseStatus;
       return this;
   }
   
   /**
    * @description It will set case RecordTypeId
    * @param name RecordTypeId
    * @return the Returns RecordTypeId
    */
   @TestVisible
   private ORIX_TestDataCaseBuilder recordTypeId(String recordTypeId) {
      
       this.recordTypeId = recordTypeId;
       return this;
   }
   
   @TestVisible
    private List<Case> create(Integer count, Boolean isPersisted) {
        
        List<Case> lstCase = new List<Case>();
        
        for(Integer i = 0; i < count; i++) {
            
            Case objCase = new Case();
            
            if(this.accountId != null) {
                objCase.AccountId = this.accountId;
            } 
            
            if(this.caseStatus != null) {
                objCase.Status = this.caseStatus;
            }
            
            if(this.recordTypeId != null) {
                objCase.RecordTypeId = this.recordTypeId;
            }
            
            lstCase.add(objCase);
        }
        if(isPersisted) {
            insert lstCase;
        }
        
        return lstCase;
    }
}