/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class TransactionRoomActionHelper {
    global TransactionRoomActionHelper(String applicationId) {

    }
    global TransactionRoomActionHelper(String applicationId, Set<Id> adcList) {

    }
    global TransactionRoomActionHelper(String applicationId, Boolean forInternalUser) {

    }
    global TransactionRoomActionHelper(String applicationId, Set<Id> adcList, Boolean queryRoot) {

    }
    global genesis.TransactionRoomActionHelper.DisplayAppDocumentCategory formTreeStructure() {
        return null;
    }
    global List<genesis.TransactionRoomActionHelper.DisplayAppDocumentCategory> getWrappedUserADCList() {
        return null;
    }
global class DisplayAppDocumentCategory {
    global List<Attachment> appDocAtchList {
        get;
        set;
    }
    global List<genesis.TransactionRoomActionHelper.Trail> breadCrumb;
    global List<genesis.TransactionRoomActionHelper.DisplayAppDocumentCategory> children {
        get;
        set;
    }
    global Boolean collapsed;
    global genesis__Application_Document_Category__c self {
        get;
        set;
    }
    global Integer taskCount;
    global List<Task> usertasks {
        get;
        set;
    }
    global DisplayAppDocumentCategory(genesis__Application_Document_Category__c self, List<genesis.TransactionRoomActionHelper.DisplayAppDocumentCategory> children, List<Attachment> appDocAtchList, List<Task> usertasks) {

    }
}
global class Trail {
    global String id;
    global String name;
    global Trail(String name, String id) {

    }
}
}
