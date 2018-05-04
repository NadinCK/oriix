/**
    @author:        Priyank Rajvanshi
    @date:          08/01/2018
    @group          Lead
    @group-content ../../ApexDocContent/Lead.htm   
    @description:   This trigger class will handle all events of Lead.
 */
public with sharing class ORIX_LeadTriggerHandler {
    
    public void afterUpdate(list<Lead> triggerNew) {
        updateContactIdOnOpportunity(triggerNew);
    }
    /**
    @author:        Priyank Rajvanshi
    @date:          08/01/2018
    @group          Lead
    @group-content ../../ApexDocContent/Lead.htm   
    @description:   This method will tag contact id on opportunity.
 */
    private void updateContactIdOnOpportunity(list<Lead> triggerNew) {
        if(!triggerNew.isEmpty()) {
            list<Opportunity> lstOpportunity = new List<Opportunity>();
            //querying on recordtype to get record type id
            RecordType novatedRT = [SELECT id,Name FROM RecordType where sobjectType = 'Lead' AND DeveloperName = 'Novated_Driver_Lead']; 
            for(Lead objLead: triggerNew) {
                //apply check if lead is comnverted and converted opportunity id and contact id is not null
                if(objLead.IsConverted && objLead.ConvertedOpportunityId != null && objLead.ConvertedContactId != null && 
                    objLead.RecordTypeId == novatedRT.Id) {
                    Opportunity objOpp = new Opportunity(id=objLead.ConvertedOpportunityId);
                    objOpp.ORIX_Contact__c = objLead.ConvertedContactId;
                    lstOpportunity.add(objOpp);
                }
            }
            if(!lstOpportunity.isEmpty()) {
                try {
                    update lstOpportunity;
                }
                catch(Exception ex) {
                }
                
            }
        }
    }
}