/**
 * @auther      : Priyank Rajvanshi
 * @date        : 27/11/2017
 * @description : This trigger handler will be used to count number of content document link under one task.
 *                  
 **/
public class ORIX_ContentDocumentLinkTriggerHandler {
    
    public void afterInsert(list<ContentDocumentLink> triggerNew,list<ContentDocumentLink> triggerOld) {
        countNumberofFilesUnderTask(triggerNew,triggerOld);
    }
    
    public void countNumberofFilesUnderTask(list<ContentDocumentLink> triggerNew,list<ContentDocumentLink> triggerOld) {
        
        system.debug('triggerNew---'+triggerNew);
        if((triggerNew != null && !triggerNew.isEmpty()) || triggerOld != null && triggerOld.size() > 0) {
            //map is used to keep task id at key part and number of files at value part
            map<Id,Decimal> mapTaskIdKeyNoOfFilesValue = new map<id,decimal>();
            //this set is used to fetch all content document link under one task
            set<Id> setEntityId = new set<Id>();
            //This list is used to update number of attachments on task.
            List<Task> lstTaskToUpdate = new list<Task>();
            map<string,string> sobjectTypebyPrefix = commonHandler.getSobjectTypeById();
            
            if(triggerNew != null && triggerNew.size() > 0) {
                for(ContentDocumentLink objCDL : triggerNew) {
                    if(objCDL.LinkedEntityId != null) {
                        string idPrefix = String.valueOf(objCDL.LinkedEntityId).substring(0,3);
                        if(idPrefix != null && sobjectTypebyPrefix.get(idPrefix) != null && sobjectTypebyPrefix.get(idPrefix) == 'task')
                            setEntityId.add(objCDL.LinkedEntityId);
                    }
                }
            }
            if(triggerOld != null && triggerOld.size() > 0) {
                for(ContentDocumentLink objCDL : triggerOld) {
                    if(objCDL.LinkedEntityId != null) {
                        string idPrefix = String.valueOf(objCDL.LinkedEntityId).substring(0,3);
                        if(idPrefix != null && sobjectTypebyPrefix.get(idPrefix) != null && sobjectTypebyPrefix.get(idPrefix) == 'task')
                            setEntityId.add(objCDL.LinkedEntityId);
                    }
                }
            }
            if(!setEntityId.isEmpty()) {
                List<ContentDocumentLink> lstCDL = [SELECT Id,LinkedEntityId,ContentDocumentId from ContentDocumentLink where
                                                    LinkedEntityId in:setEntityId];
                system.debug('lstCDL***'+lstCDL);
                if(!lstCDL.isEmpty()) {
                    for(ContentDocumentLink objCDL : lstCDL) {
                        
                        if(objCDL.LinkedEntityId != null && mapTaskIdKeyNoOfFilesValue.get(objCDL.LinkedEntityId) == null) {
                            mapTaskIdKeyNoOfFilesValue.put(objCDL.LinkedEntityId,1);
                        }
                        else {
                            decimal count = mapTaskIdKeyNoOfFilesValue.get(objCDL.LinkedEntityId);
                            count +=1;
                            mapTaskIdKeyNoOfFilesValue.put(objCDL.LinkedEntityId,count);
                        }
                    }
                }
                else {
                    For(ContentDocumentLink objCDL : triggerOld) {
                        if(objCDL.LinkedEntityId != null) {
                            Task objTask = new Task();
                            objTask.Id = objCDL.LinkedEntityId;
                            objTask.ORIX_No_Of_Attachments__c = 0;
                            lstTaskToUpdate.add(objTask);
                        }
                        
                    }
                }
                if(mapTaskIdKeyNoOfFilesValue != null && mapTaskIdKeyNoOfFilesValue.size() > 0) {
                     for(Id strTaskId : mapTaskIdKeyNoOfFilesValue.keyset()) {
                         Task objTask = new Task();
                         objTask.Id = strTaskId;
                         objTask.ORIX_No_Of_Attachments__c = mapTaskIdKeyNoOfFilesValue.get(strTaskId);
                         lstTaskToUpdate.add(objTask);
                     }
                }
                system.debug('lstTaskToUpdate***'+lstTaskToUpdate);
                if(!lstTaskToUpdate.isEmpty()) {
                    update lstTaskToUpdate;
                }
            }
        }
        
    }
    
}