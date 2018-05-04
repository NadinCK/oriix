/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class ApplicationWizardBaseClass {
    global genesis__Applications__c application {
        get;
        set;
    }
    global genesis.ApplicationWizardManager manager {
        get;
        set;
    }
    global Integer selectedSeqNo {
        get;
        set;
    }
    global ApplicationWizardBaseClass(ApexPages.StandardController controller) {

    }
    global virtual System.PageReference backActionLogic() {
        return null;
    }
    global virtual String cancelAction() {
        return null;
    }
    global virtual System.PageReference currentActionLogic() {
        return null;
    }
    global genesis.ApplicationWizardManager getManager() {
        return null;
    }
    global virtual System.PageReference nextActionLogic() {
        return null;
    }
    global virtual System.PageReference onLoad() {
        return null;
    }
}
