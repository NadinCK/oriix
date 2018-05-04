/**
* @author Priyank
* @date 30/06/2017
*
* @group Opportunity
* @group-content ../../ApexDocContent/Opportunity.htm
*
* @description Test Class to make Opportunity test data
**/


@IsTest @TestVisible
private class ORIX_TestDataOpportunityBuilder {
   
   //   Opportunity Name
   private String name;
  //  Opportunity Account Id
   private Id accountId;
   // opportunity closeDate
   private date closeDate;
   //opportunity Stagename
   private string stageName;
   //opportunity custom stagename
   private string custStageName;
    
   /**
    * 
    */
   @TestVisible
   private ORIX_TestDataOpportunityBuilder() {
       
   }
   
   /**
    * @description it will set account id
    * @param id Account id.
    * @return the Returns account id
   */
   @TestVisible
   private ORIX_TestDataOpportunityBuilder Account(Id accountId) {
       // Set Opportunity name
       this.accountId = accountId;
       return this;
   }
   /**
    * @description it will set Opportunity Name
    * @param name Opportunity Name.
    * @return the Returns Opportunity Name
    */
   @TestVisible
   private ORIX_TestDataOpportunityBuilder name(String name) {
       // Set Opportunity name
       this.name = name;
       return this;
   }
   /**
    * @description it will set Close Date
    * @param Closed date Opportunity Closed date.
    * @return the Returns Opportunity Closed date
    */
   @TestVisible
   private ORIX_TestDataOpportunityBuilder closeDate(Date closeDate) {
       // Set Opportunity closeDate
       this.closeDate = closeDate;
       return this;
   }
   
   /**
    * @description it will set stageName
    * @param Closed date Opportunity stageName.
    * @return the Returns Opportunity stageName
    */
   @TestVisible
   private ORIX_TestDataOpportunityBuilder stageName(String stageName) {
       // Set Opportunity closeDate
       this.stageName = stageName;
       return this;
   }
   
   /**
    * @description it will set custStageName
    * @param Closed date Opportunity custStageName.
    * @return the Returns Opportunity custStageName
    */
   @TestVisible
   private ORIX_TestDataOpportunityBuilder custStageName(String custStageName) {
       // Set Opportunity closeDate
       this.custStageName = custStageName;
       return this;
   }
   
   
    /**
    * @description Returns List<Opportunity__c> 
    * @param count Opportunity count.
    * @param persisted Opportunity control to insert datOpportunityObject.
    * @return the Returns List<Opportunity__c> 
    */
   @TestVisible
   private List<Opportunity> create(Integer count, Boolean persisted) {
       // List Intilization 
       List<Opportunity> resultOpportunityList = new List<Opportunity>();
       /**
            Loop work of how many Opportunity to create
       **/
       for (Integer i = 0; i < count; i++) {
           // Intilization Ojbect
           Opportunity opportunityObject = new Opportunity(
                    
           );
           
            // Set Opportunity name
           if (this.name != null){
               opportunityObject.Name = this.name;
           }
           
           //set closed date
           if(this.closeDate != null){
                opportunityObject.CloseDate = this.closeDate;
           }
           //set stagename
           if(this.stageName != null) {
                opportunityObject.stageName = this.stageName;
           }
           //set custom stage name
           if(this.custStageName != null) {
                opportunityObject.ORIX_Stage_Category__c = this.custStageName;
           }
           // Set Account Id
           if (this.accountId != null){
               opportunityObject.AccountId = this.accountId;
           }
          
           // add to list
           resultOpportunityList.add(opportunityObject);
       }
       // insert command
       if (persisted) insert resultOpportunityList;
       // return  value
       return resultOpportunityList;
   }
}