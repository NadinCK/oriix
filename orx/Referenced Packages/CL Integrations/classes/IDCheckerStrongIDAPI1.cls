/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class IDCheckerStrongIDAPI1 {
    global List<String> BusinessRules {
        get;
        set;
    }
    global String CallbackAuthentication;
    global String CallbackUri;
    global String ClientReference {
        get;
        set;
    }
    global ints.IDCheckerStrongIDAPI1.CrossReferenceData CrossReferenceData {
        get;
        set;
    }
    global Object ExcludedImagesInCallback;
    global ints.IDCheckerStrongIDAPI1.Facelink Facelink {
        get;
        set;
    }
    global String ImageData {
        get;
        set;
    }
    global Boolean IncludeImagesInCallback {
        get;
        set;
    }
    global ints.IDCheckerStrongIDAPI1.Metadata Metadata {
        get;
        set;
    }
    global Boolean StrongIDBasic {
        get;
        set;
    }
    global Boolean StrongIDExpert {
        get;
        set;
    }
    global Boolean StrongIDPlusAuto {
        get;
        set;
    }
    global Boolean StrongIDPlusManual {
        get;
        set;
    }
    global ints.IDCheckerStrongIDAPI1.StrongIDPlusManualVerifications StrongIDPlusManualVerifications {
        get;
        set;
    }
    global Integer TotalNumberOfParts;
    global IDCheckerStrongIDAPI1() {

    }
global class CrossReferenceData {
    global String AccountNumber {
        get;
        set;
    }
    global String Address {
        get;
        set;
    }
    global String Address1 {
        get;
        set;
    }
    global String Address2 {
        get;
        set;
    }
    global String BillingDate {
        get;
        set;
    }
    global String Country {
        get;
        set;
    }
    global String DateOfBirth {
        get;
        set;
    }
    global String DateOfExpiry {
        get;
        set;
    }
    global String DateOfIssue {
        get;
        set;
    }
    global String DocumentNumber {
        get;
        set;
    }
    global String Gender {
        get;
        set;
    }
    global String Givenname {
        get;
        set;
    }
    global String LivePhoto {
        get;
        set;
    }
    global String Mrz1 {
        get;
        set;
    }
    global String Mrz2 {
        get;
        set;
    }
    global String Mrz3 {
        get;
        set;
    }
    global String Name {
        get;
        set;
    }
    global String NationalIdentificationNumber {
        get;
        set;
    }
    global String PassPhoto {
        get;
        set;
    }
    global String PlaceOfBirth {
        get;
        set;
    }
    global String Postcode {
        get;
        set;
    }
    global String Residence {
        get;
        set;
    }
    global String SignDate {
        get;
        set;
    }
    global String State {
        get;
        set;
    }
    global String Surname {
        get;
        set;
    }
    global String ValidFromDate {
        get;
        set;
    }
    global CrossReferenceData() {

    }
}
global class Facelink {
    global Boolean AllowAutomaticCheck {
        get;
        set;
    }
    global Boolean AllowManualCheck {
        get;
        set;
    }
    global Facelink() {

    }
}
global class Metadata {
    global String Bsn {
        get;
        set;
    }
    global String CountryCode {
        get;
        set;
    }
    global String DocumentType {
        get;
        set;
    }
    global String PassPhoto {
        get;
        set;
    }
    global Metadata() {

    }
}
global class StrongIDPlusManualVerifications {
    global Boolean Proofreading {
        get;
        set;
    }
    global Boolean VerificationData {
        get;
        set;
    }
    global Boolean VerificationFont {
        get;
        set;
    }
    global Boolean VerificationPhotoIntegration {
        get;
        set;
    }
    global StrongIDPlusManualVerifications() {

    }
}
}
