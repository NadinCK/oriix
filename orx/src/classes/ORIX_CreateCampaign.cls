public with sharing class ORIX_CreateCampaign {
    
    @InvocableMethod(label='Create Campaign and tag on Event') 
    public static void createCampaign(List<Id> eventId) {
        if(eventId != null && eventId.size() > 0) {
            list<Campaign> lstInsertCampaign = new List<Campaign>();
            list<Event> lstEventData = [SELECT Id,Subject,StartDateTime,EndDateTime,ORIX_Campaign__c FROM Event where id in:eventId];
            if(lstEventData != null && lstEventData.size() > 0) {
                For(Event objEvent : lstEventData) {
                    Campaign objCamp = new Campaign();
                    objCamp.Name = objEvent.Subject;
                    objCamp.Type = 'Novated Group Education';
                    objCamp.StartDate = Date.ValueOf(objEvent.StartDateTime);
                    objCamp.EndDate = Date.ValueOf(objEvent.EndDateTime);
                    objCamp.Status = 'Planned';
                    objCamp.IsActive = true;
                    lstInsertCampaign.add(objCamp);
                }
            }
            if(lstInsertCampaign != null && lstInsertCampaign.size() > 0) {
                insert lstInsertCampaign;
                
                if(lstEventData != null && lstEventData[0].ORIX_Campaign__c == null && lstInsertCampaign != null &&
                    lstInsertCampaign[0].id != null) {
                    lstEventData[0].ORIX_Campaign__c =  lstInsertCampaign[0].id;
                    update lstEventData;
                }
            }
        }
    }
}