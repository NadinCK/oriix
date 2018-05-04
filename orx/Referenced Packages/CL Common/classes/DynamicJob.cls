/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class DynamicJob implements Database.Batchable<SObject>, Database.Stateful, System.Schedulable {
    global DynamicJob() {

    }
    global DynamicJob(String name) {

    }
    global DynamicJob(String name, String query) {

    }
    global virtual void doExecute(System.SchedulableContext sc) {

    }
    global abstract void doInitialize();
    global virtual void execute(System.SchedulableContext sc) {

    }
    global void execute(Database.BatchableContext bc, List<SObject> scope) {

    }
    global void finish(Database.BatchableContext bc) {

    }
    global abstract String getRuntimeQuery();
    global virtual String getRuntimeQueryForPipelinedExecution(Set<Id> records) {
        return null;
    }
    global void initialize(clcommon__Job_Logging__c jobLoggingEntry, Integer threadNumber) {

    }
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return null;
    }
}
