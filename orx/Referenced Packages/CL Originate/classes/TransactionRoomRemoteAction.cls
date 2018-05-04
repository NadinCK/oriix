/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class TransactionRoomRemoteAction {
    global static String ACTION_NOT_ALLOWED;
    global static String ACTION_SUCCESS;
    global static String ns;
    global TransactionRoomRemoteAction(ApexPages.StandardController controller) {

    }
    @RemoteAction
    global static String addAppDocumentFolder(String applicationId, String parentId, String fName) {
        return null;
    }
    @RemoteAction
    global static String addApplicationDocumentCategories(String applicationId, List<Id> adcIds) {
        return null;
    }
    @RemoteAction
    global static String addApplicationDocuments(String applicationId, String adcId) {
        return null;
    }
    @RemoteAction
    global static String attachBlob(String adcId, String parentId, String fileName, String contentType, String base64BlobValue, String attachmentId) {
        return null;
    }
    @RemoteAction
    global static String createJunction(String adcId, String attachmentId) {
        return null;
    }
    @RemoteAction
    global static String deleteApplicationDocuments(String applicationId, List<Id> appDocIds) {
        return null;
    }
    @RemoteAction
    global static SObject fetchSummaryObjForADC(String applicationId, String adcId) {
        return null;
    }
    @RemoteAction
    global static String getAllAttachments(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String getAllDocumentCategories() {
        return null;
    }
    @RemoteAction
    global static String getAllPartiesOnApplication(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String getAllRelevantDocumentCategories(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String getAllUsers(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String getApplicationTreeStr(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String getBorrowingStructure(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String getClosedTaskStatusName() {
        return null;
    }
    @RemoteAction
    global static String getPicklistValues(String objtype, String fieldName) {
        return null;
    }
    @RemoteAction
    global static String getUserTasksForApplication(String applicationId) {
        return null;
    }
    global static Boolean isInternalUser(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String isLoggedInUserInternal(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String linkAttachmentToADC(String appId, String adcId, String atchId) {
        return null;
    }
    @RemoteAction
    global static String linkAttachmentsToADC(String adcId, List<String> attachmentIds) {
        return null;
    }
    @RemoteAction
    global static String notify(String applicationId, String adcId) {
        return null;
    }
    @RemoteAction
    global static String reQueryAppDocDetail(String applicationId, String adcId) {
        return null;
    }
    @RemoteAction
    global static String saveAppDocDetails(String applicationId, String inStr) {
        return null;
    }
    @RemoteAction
    global static String undoDeleteApplicationDocuments(String applicationId, List<Id> appDocIds) {
        return null;
    }
    @RemoteAction
    global static String unlinkAttachmentFromADC(String appId, String adcId, String atchId) {
        return null;
    }
}
