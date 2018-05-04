/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class UCCIntegrationResponse extends ints.IntegrationResponseObject {
    global List<ints.UCCIntegrationResponse.ApproveOrder> ApproveOrder;
    global List<ints.UCCIntegrationResponse.createfiling> createfilings;
    global String faultStringResponseCode;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global List<ints.UCCIntegrationResponse.jurisdiction> jurisdictionDetails;
    global String rawRequest;
    global String rawResponse;
    global List<ints.UCCIntegrationResponse.Updatefiling> Updatefiling;
    global List<ints.UCCIntegrationResponse.Validatefiling> Validatefiling;
    global String xmlRequest;
    global String xmlResponse;
    global UCCIntegrationResponse() {

    }
global class ApproveOrder {
    global String OrderInfo;
    global ApproveOrder() {

    }
}
global class Updatefiling {
    global String Filing;
    global String OrderID;
    global Updatefiling() {

    }
}
global class Validatefiling {
    global String Messages;
    global Validatefiling() {

    }
}
global class createfiling {
    global String Filing;
    global String Message;
    global String OrderID;
    global createfiling() {

    }
}
global class jurisdiction {
    global String jurisdictionID;
    global String jurisdictionName;
    global String stateCD;
    global jurisdiction() {

    }
}
}
