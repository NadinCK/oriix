/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class EDXRegistrationStatRes extends ints.IntegrationResponseObject {
    global ints.EDXRegistrationStatRes.Edx data;
    global List<String> errors;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global Boolean isSuccess;
    global String meta;
    global String requestBody;
    global String responseBody;
    global EDXRegistrationStatRes() {

    }
global class Edx {
    global List<ints.EDXRegistrationStatRes.RegistrationStatus> registrationStatus;
    global Edx() {

    }
}
global class EsisId {
    global EsisId() {

    }
}
global class RegistrationNumber {
    global RegistrationNumber() {

    }
}
global class RegistrationStatus {
    global String errorMessage;
    global ints.EDXRegistrationStatRes.EsisId esisId;
    global Boolean isFinalStatus;
    global String registrationId;
    global ints.EDXRegistrationStatRes.RegistrationNumber registrationNumber;
    global String status;
    global RegistrationStatus() {

    }
}
}
