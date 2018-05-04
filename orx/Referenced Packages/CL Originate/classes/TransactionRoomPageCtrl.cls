/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class TransactionRoomPageCtrl {
    global genesis__Applications__c application {
        get;
        set;
    }
    global List<genesis.TransactionRoomPageCtrl.Participant> participants {
        get;
        set;
    }
    global Map<Id,clcommon__Party__c> parties;
    global TransactionRoomPageCtrl(ApexPages.StandardController controller) {

    }
global class Participant {
    global ConnectApi.Photo photo {
        get;
        set;
    }
    global String role {
        get;
        set;
    }
    global String url {
        get;
        set;
    }
    global User user {
        get;
        set;
    }
}
}
