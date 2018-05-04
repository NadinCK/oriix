public class ORIX_CountAttachmentHandler {

    //created by Anjali
    //this method updates the number of attachments(On task) after deletion of any file
    public void countNumberOfFiles(list<ContentDocument> triggerOld){
        Set<ID> setOfToBeDeletedFiles= new Set<ID>(); //contains ids of all the files to be deleted
        for(ContentDocument fileID: triggerOld ){
            setOfToBeDeletedFiles.add(fileID.ID);
        }
        if(triggerOld != null && triggerOld.size() > 0) {
            //map is used to keep task id at key part and number of files at value part
            map<Id,Decimal> mapTaskIdKeyNoOfFilesValue = new map<id,decimal>();
            //this set is used to fetch all content document link under one task
            set<Id> setTaskDocIDs = new set<Id>();
            //This list is used to update number of attachments on task.
            List<Task> lstTaskToUpdate = new list<Task>();
            map<string,string> sobjectTypebyPrefix = commonHandler.getSobjectTypeById();
            list<ContentDocumentLink> contentdoclist = [SELECT ContentDocumentId,Id,LinkedEntityId FROM ContentDocumentLink where ContentDocumentId IN :setOfToBeDeletedFiles];
        //Map<id, ContentDocumentLink> map1=new  Map<id, ContentDocumentLink>([SELECT id, (select id from ContentDocumentLinks) from ContentDocument where ContentDocumentID=:fileid ]);
            if(contentdoclist != null && contentdoclist.size() > 0) {
                for(ContentDocumentLink objCDL : contentdoclist) {
                    if(objCDL.LinkedEntityId != null) {
                        string idPrefix = String.valueOf(objCDL.LinkedEntityId).substring(0,3);
                        if(idPrefix != null && sobjectTypebyPrefix.get(idPrefix) != null && sobjectTypebyPrefix.get(idPrefix) == 'task')
                            setTaskDocIDs.add(objCDL.LinkedEntityId);
                    }
                }
            }
      
            if(!setTaskDocIDs.isEmpty()) {
                
                //list contains all the files which are related to tasks only
                List<ContentDocumentLink> listOfContentDoc = [SELECT Id,LinkedEntityId,ContentDocumentId from ContentDocumentLink where
                                                    ContentDocumentId in :setOfToBeDeletedFiles 
                                                    AND
                                                    LinkedEntityId in :setTaskDocIDs];
               //this map contains task id with task details whose files are to be deleted 
               Map<id, Task> mapTaskIdToNoOfAttachments = new  Map<id, Task> ([SELECT id, ORIX_No_Of_Attachments__c from Task where id in :setTaskDocIDs]);
                system.debug('listOfContentDoc***'+listOfContentDoc);
                if(!listOfContentDoc.isEmpty()) {
                    for(ContentDocumentLink objCDL : listOfContentDoc) {
                        //for all the files to be deleted
                        if(objCDL.LinkedEntityId != null ){
                            decimal count = mapTaskIdToNoOfAttachments.get(objCDL.LinkedEntityId).ORIX_No_Of_Attachments__c;
                            if(count>0){
                            count -=1; //decrement number of attachments
                            }
                            else{
                                count=0;
                            }
                            mapTaskIdKeyNoOfFilesValue.put(objCDL.LinkedEntityId,count);
                          }
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
                    update lstTaskToUpdate;      //update task of deleted files
                }
            }
        }
    }