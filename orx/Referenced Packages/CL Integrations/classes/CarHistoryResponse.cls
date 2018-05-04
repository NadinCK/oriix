/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CarHistoryResponse extends ints.IntegrationResponseObject {
    global String body;
    global String colour;
    global String firstRetailYear;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global String make;
    global String message;
    global String model;
    global String ppsrSearchCertificateNumber;
    global String rawRequest;
    global String rawResponse;
    global List<ints.CarHistoryResponse.registration> reg;
    global String series;
    global List<ints.CarHistoryResponse.summary> sum;
    global String transmission;
    global String variant;
    global String vehicleType;
    global String vin;
    global CarHistoryResponse() {

    }
global class registration {
    global String registrationExpiryDate;
    global String registrationPlate;
    global String registrationState;
    global registration() {

    }
}
global class summary {
    global String encumbrance;
    global String insurance;
    global String odometer;
    global String registration;
    global String stolen;
    global String writtenOff;
    global summary() {

    }
}
}
