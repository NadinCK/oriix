/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DAndBResponseAuthentication extends ints.IntegrationResponseObject {
    global ints.DAndBResponseAuthentication.AuthenticationDetailObj authenticationDetail;
    global String errorMessage;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global String requestBody;
    global String responseBody;
    global ints.DAndBResponseAuthentication.TransactionDetail TransactionDetail;
    global ints.DAndBResponseAuthentication.TransactionResult TransactionResult;
    global DAndBResponseAuthentication() {

    }
global class AuthenticationDetailObj {
    global String token;
    global AuthenticationDetailObj() {

    }
}
global class ResultMessage {
    global String ResultDescription;
    global ResultMessage() {

    }
}
global class TransactionDetail {
    global String ApplicationTransactionID;
    global String ServiceTransactionID;
    global String TransactionTimestamp;
    global TransactionDetail() {

    }
}
global class TransactionResult {
    global String ResultID;
    global ints.DAndBResponseAuthentication.ResultMessage ResultMessage;
    global String ResultText;
    global String SeverityText;
    global TransactionResult() {

    }
}
}
