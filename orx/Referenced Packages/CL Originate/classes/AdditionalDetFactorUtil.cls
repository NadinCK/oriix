/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AdditionalDetFactorUtil {
    global AdditionalDetFactorUtil() {

    }
    global static String createDetFactorsSnapshot(List<genesis.AdditionalDetFactorUtil.AddnlDetFactorRecord> addnlDetFactorRecordList) {
        return null;
    }
    global virtual Boolean evaluateAddnlCriteriaForApplication(List<genesis__Additional_Determining_Factor__c> addnlDetFactorList, String keyValueSnapshot, genesis__Applications__c application) {
        return null;
    }
    global virtual Boolean evaluateAddnlCriteriaForQuote(List<genesis__Additional_Determining_Factor__c> addnlDetFactorList, String keyValueSnapshot, genesis__Quick_Quotes__c quote) {
        return null;
    }
    global static List<genesis.AdditionalDetFactorUtil.AddnlDetFactorRecord> getDetFactorFromSnapshot(List<genesis__Additional_Determining_Factor__c> addnlDetFactorList, String snapshot) {
        return null;
    }
global class AddnlDetFactorRecord {
    global genesis__Additional_Determining_Factor__c addnlDetFactor {
        get;
        set;
    }
    global String displayType {
        get;
        set;
    }
    global String value {
        get;
        set;
    }
    global AddnlDetFactorRecord() {

    }
}
}
