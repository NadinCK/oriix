/**
 * @Created By : Sushant Kumar
 * @Date : 21/08/2017
 * @Description : Builder class for opportunity Product
 **/
@IsTest @TestVisible
private class ORIXOpportunityProductBuilder {

    private Id opportunityId;
    private Id priceBookEntryId;
    private Decimal baseManagementFee;
    private Decimal fleetSize;
    
    @TestVisible
    private ORIXOpportunityProductBuilder(){
        
    }
    
    @TestVisible 
    private ORIXOpportunityProductBuilder opportunityId(Id opportunityId) {
        this.opportunityId = opportunityId;
        return this;
    }
    
    @TestVisible
    private ORIXOpportunityProductBuilder priceBookEntryId(Id priceBookEntryId) {
        this.priceBookEntryId = priceBookEntryId;
        return this;
    }
    
    @TestVisible
    private ORIXOpportunityProductBuilder baseManagementFee(Decimal baseManagementFee) {
        this.baseManagementFee = baseManagementFee;
        return this;
    }
    
    @TestVisible
    private ORIXOpportunityProductBuilder fleetSize(Decimal fleetSize) {
        this.fleetSize = fleetSize;
        return this;
    }
    
    @TestVisible
    private List<OpportunityLineItem> create(Integer count, Boolean isPersisted) {
        
        List<OpportunityLineItem> lstOppProd = new List<OpportunityLineItem>();
        
        for(Integer i = 0; i < count; i++) {
            
            OpportunityLineItem oppLineItem = new OpportunityLineItem();
            
            if(this.opportunityId != null) {
				oppLineItem.OpportunityId = this.opportunityId;
            }
            
            if(this.priceBookEntryId != null) {
                oppLineItem.PricebookEntryId = this.priceBookEntryId;
            }
            
            if(this.baseManagementFee != null) {
                oppLineItem.ORIX_Base_Management_Fee__c = this.baseManagementFee;
            }
            
            if(this.fleetSize != null) {
                oppLineItem.ORIX_Fleet_Size__c = this.fleetSize;
            }
            
            lstOppProd.add(oppLineItem);
            
        }
        
        if(isPersisted) {
            insert lstOppProd;
        }
        
        return lstOppProd;
    }
    
}