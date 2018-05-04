/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class DefaultDataArchiveSummaryAction implements clcommon.IDataArchiveSummaryAction {
    global DefaultDataArchiveSummaryAction() {

    }
    global virtual clcommon.IDataArchiveSummaryAction doExecute() {
        return null;
    }
    global clcommon__Data_Archive_Configuration__c getChildArchiveConfig() {
        return null;
    }
    global List<SObject> getDetailArchivedRecords(Id masterRecordId) {
        return null;
    }
    global clcommon__Data_Archive_Configuration__c getMasterArchiveConfig() {
        return null;
    }
    global List<SObject> getMasterRecords() {
        return null;
    }
    global virtual Object getParam(String name) {
        return null;
    }
    global virtual Map<String,Object> getResults() {
        return null;
    }
    global List<SObject> getSummaryRecordsToUpdate(Id masterRecordId) {
        return null;
    }
    global void populateArchivedToSummaryRecordToLink(SObject archivedRecord, SObject summaryRecord) {

    }
    global void populateSummaryRecordToInsert(String objectName, SObject summaryRecord) {

    }
    global void populateSummaryRecordToUpdate(String objectName, SObject summaryRecord) {

    }
    global virtual clcommon.IDataArchiveSummaryAction setParams(Map<String,Object> params) {
        return null;
    }
    global virtual void updateSummaryField(clcommon__Data_Archive_Summary_Field__c summaryField, SObject summaryRecord, List<SObject> childRecords) {

    }
}
