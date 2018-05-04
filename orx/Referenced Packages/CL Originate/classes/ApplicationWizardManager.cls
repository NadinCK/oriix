/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ApplicationWizardManager {
    global Integer currentSequence;
    global Boolean isSF1Request {
        get;
        set;
    }
    global Map<Integer,genesis__Application_Wizard_Config__c> pageSeqMap;
    global List<genesis__Application_Wizard_Config__c> wizard;
    global ApplicationWizardManager() {

    }
    global System.PageReference cancel(String cancelUrl) {
        return null;
    }
    global System.PageReference finish(genesis__Applications__c application, String finishUrl) {
        return null;
    }
    global List<genesis__Application_Wizard_Config__c> getApplicationWizardSteps() {
        return null;
    }
    global String getBackButtonText() {
        return null;
    }
    global String getNextButtonText() {
        return null;
    }
    global System.PageReference navigateBack(Map<String,String> urlParams) {
        return null;
    }
    global System.PageReference navigateNext(Map<String,String> urlParams) {
        return null;
    }
    global System.PageReference start(Integer initialStepNumber, Map<String,String> urlParams) {
        return null;
    }
}
