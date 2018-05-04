/**
 * @auther      : Sushant Kumar
 * @date        : 30/06/2017
 * @description : This Batch is created for contract renewal and allocation of opportunities (owned by inactive user)
 *                  to BDM Unallocated queue
 **/
global class ORIXContractRenewalOpportunityBatch implements Database.Batchable<Opportunity>, System.Schedulable {

    global Iterable<Opportunity> start(Database.BatchableContext bc) {
        
        Date todayDate = System.today();
        Date dateAfter12Months = todayDate.addMonths(12);
        
        
        List<Opportunity> opportunityList = 
            [SELECT Name, StageName, CloseDate, AccountId, ORIX_Contract_Expiry_Date__c, OwnerId, ORIX_Contract_Renewal__c, 
             ORIX_Stage_Category__c, ORIX_Is_Opportunity_Renewal_Created__c FROM Opportunity WHERE 
             ORIX_Contract_Expiry_Date__c <=: dateAfter12Months AND ORIX_Contract_Renewal__c = false AND 
             ORIX_Stage_Category__c ='Lost' AND ORIX_Is_Opportunity_Renewal_Created__c =false];
        
        return opportunityList;
    }
    
    global void execute(Database.BatchableContext bc, List<Opportunity> renewalOpportunities) {
        
        List<Opportunity> renewdOpportunities = new List<Opportunity>();
        
        Opportunity clonedOpportunity;
        
        for(Opportunity opportunityObj : renewalOpportunities) {
            
            clonedOpportunity = opportunityObj.clone(false, true, false, false);
            clonedOpportunity.ORIX_Contract_Renewal__c = true;
            clonedOpportunity.CloseDate = opportunityObj.ORIX_Contract_Expiry_Date__c;
            clonedOpportunity.ORIX_Stage_Category__c = 'Working Platform';
            clonedOpportunity.StageName = 'Working Platform';
             
            //sharing of inactive owners records to public group "BDM Unallocated" will be done by insert and update trigger 
            //on opportunity.
            
            //marking of opportunity for which renewal is created
            opportunityObj.ORIX_Is_Opportunity_Renewal_Created__c = true;
            
            renewdOpportunities.add(clonedOpportunity);
        }
        
        if(!renewdOpportunities.isEmpty()) {
            INSERT renewdOpportunities;
        }
        if(!renewalOpportunities.isEmpty()) {
            update renewalOpportunities;
        }
        //send notification
    }
    
    global void finish(Database.BatchableContext bc) {
        
    }
    
    global void execute(System.SchedulableContext sc) {
        //System.debug('ORIXContractRenewalOpportunityBatch started running....');
        ORIXContractRenewalOpportunityBatch contractOpportunityReneualBatchObj = new ORIXContractRenewalOpportunityBatch();
        Database.executeBatch(contractOpportunityReneualBatchObj);
    }
}