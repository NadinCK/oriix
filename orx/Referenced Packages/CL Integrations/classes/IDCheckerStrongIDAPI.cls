/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class IDCheckerStrongIDAPI {
    webService List<String> BusinessRules {
        get;
        set;
    }
    @WebService
    webService String CallbackAuthentication;
    @WebService
    webService String CallbackUri;
    webService String ClientReference {
        get;
        set;
    }
    webService ints.IDCheckerStrongIDAPI.CrossReferenceData CrossReferenceData {
        get;
        set;
    }
    @WebService
    webService String ExcludedImagesInCallback;
    webService ints.IDCheckerStrongIDAPI.Facelink Facelink {
        get;
        set;
    }
    webService String ImageData {
        get;
        set;
    }
    webService Boolean IncludeImagesInCallback {
        get;
        set;
    }
    webService ints.IDCheckerStrongIDAPI.Metadata Metadata {
        get;
        set;
    }
    webService Boolean StrongIDBasic {
        get;
        set;
    }
    webService Boolean StrongIDExpert {
        get;
        set;
    }
    webService Boolean StrongIDPlusAuto {
        get;
        set;
    }
    webService Boolean StrongIDPlusManual {
        get;
        set;
    }
    webService ints.IDCheckerStrongIDAPI.StrongIDPlusManualVerifications StrongIDPlusManualVerifications {
        get;
        set;
    }
    @WebService
    webService Integer TotalNumberOfParts;
global class CrossReferenceData {
    webService String AccountNumber {
        get;
        set;
    }
    webService String Address {
        get;
        set;
    }
    webService String Address1 {
        get;
        set;
    }
    webService String Address2 {
        get;
        set;
    }
    webService String BillingDate {
        get;
        set;
    }
    webService String Country {
        get;
        set;
    }
    webService String DateOfBirth {
        get;
        set;
    }
    webService String DateOfExpiry {
        get;
        set;
    }
    webService String DateOfIssue {
        get;
        set;
    }
    webService String DocumentNumber {
        get;
        set;
    }
    webService String Gender {
        get;
        set;
    }
    webService String Givenname {
        get;
        set;
    }
    webService String LivePhoto {
        get;
        set;
    }
    webService String Mrz1 {
        get;
        set;
    }
    webService String Mrz2 {
        get;
        set;
    }
    webService String Mrz3 {
        get;
        set;
    }
    webService String Name {
        get;
        set;
    }
    webService String NationalIdentificationNumber {
        get;
        set;
    }
    webService String PassPhoto {
        get;
        set;
    }
    webService String PlaceOfBirth {
        get;
        set;
    }
    webService String Postcode {
        get;
        set;
    }
    webService String Residence {
        get;
        set;
    }
    webService String SignDate {
        get;
        set;
    }
    webService String State {
        get;
        set;
    }
    webService String Surname {
        get;
        set;
    }
    webService String ValidFromDate {
        get;
        set;
    }
    global CrossReferenceData() {

    }
}
global class Facelink {
    webService Boolean AllowAutomaticCheck {
        get;
        set;
    }
    webService Boolean AllowManualCheck {
        get;
        set;
    }
    global Facelink() {

    }
}
global class Metadata {
    webService String Bsn {
        get;
        set;
    }
    webService String CountryCode {
        get;
        set;
    }
    webService String DocumentType {
        get;
        set;
    }
    webService String PassPhoto {
        get;
        set;
    }
    global Metadata() {

    }
}
global class StrongIDPlusManualVerifications {
    webService Boolean Proofreading {
        get;
        set;
    }
    webService Boolean VerificationData {
        get;
        set;
    }
    webService Boolean VerificationFont {
        get;
        set;
    }
    webService Boolean VerificationPhotoIntegration {
        get;
        set;
    }
    global StrongIDPlusManualVerifications() {

    }
}
}
