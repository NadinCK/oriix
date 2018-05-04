/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class CLApexQueue implements System.Queueable {
    global String name;
    global Id queueJobId;
    global CLApexQueue() {

    }
    global CLApexQueue(String name) {

    }
    global void execute(System.QueueableContext qc) {

    }
    global abstract void submitNextJob();
}
