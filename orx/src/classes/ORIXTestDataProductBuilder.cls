/**

 */
@IsTest @TestVisible
private class ORIXTestDataProductBuilder {

    private Id opportunityId;
    
    private decimal baseManagementFee;
    
    private decimal fleetSize;
    
    private Id pricebookEntryId;
    
    @TestVisible
    private ORIXTestDataProductBuilder() {
        
    }
    
    @TestVisible
    private ORIXTestDataProductBuilder baseManagementFee(decimal baseManagementFee) {
        this.baseManagementFee = baseManagementFee;
        return this;
    }
    
    @TestVisible
    private ORIXTestDataProductBuilder fleetSize(decimal fleetSize) {
        this.fleetSize = fleetSize;
        return this;
    }
    
    @testVisible
    private ORIXTestDataProductBuilder opportunityId(Id opportunityId) {
        this.OpportunityId = OpportunityId;
        return this;
    }
    
    @TestVisible
    private ORIXTestDataProductBuilder pricebookEntry(Id pricebookEntryId) {
        this.pricebookEntryId = pricebookEntryId;
        return this;
    }
    
    @TestVisible
   private List<OpportunityLineItem> create(Integer count, Boolean persisted) {
       // List Intilization 
       List<OpportunityLineItem> resultOPLIList = new List<OpportunityLineItem>();
       /**
            Loop work of how many ORIX_KPI__c to create
       **/
       for (Integer i = 0; i < count; i++) {
           // Intilization Ojbect
           OpportunityLineItem opliObject = new OpportunityLineItem(
                    
           );
           
           if(pricebookEntryId != null) {
                opliObject.PricebookEntryId = PricebookEntryId;
           }
           if(baseManagementFee != null) {
                opliObject.ORIX_Base_Management_Fee__c = this.baseManagementFee;
           }           
           if(fleetSize != null){
                opliObject.ORIX_Fleet_Size__c = this.fleetSize;
           }
           
           if(OpportunityId != null) {
                opliObject.OpportunityId = this.OpportunityId;
           }
           
           // add to list
           resultOPLIList.add(opliObject);
       }
       // insert command
       if (persisted) insert resultOPLIList;
       // return  value
       return resultOPLIList;
   }
}