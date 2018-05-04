/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DAndBresponseTRND extends ints.IntegrationResponseObject {
    global String errorMessage;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global ints.DAndBresponseTRND.OrderProductResponse OrderProductResponse;
    global ints__DAndB_Rating__c Rating_Data;
    global String requestBody;
    global String responseBody;
    global DAndBresponseTRND() {

    }
    global ints.DAndBresponseTRND parse(String jsonBody) {
        return null;
    }
global class Assessment {
    global ints.DAndBresponseTRND.DNBStandardRating DNBStandardRating;
    global ints.DAndBresponseTRND.FamilyTreeMemberRoleText FinancialConditionText;
    global ints.DAndBresponseTRND.FamilyTreeMemberRoleText HistoryRatingText;
    global Assessment() {

    }
}
global class DNBStandardRating {
    global String DNBStandardRating;
    global DNBStandardRating() {

    }
}
global class FamilyTreeMemberRole {
    global ints.DAndBresponseTRND.FamilyTreeMemberRoleText FamilyTreeMemberRoleText;
    global FamilyTreeMemberRole() {

    }
}
global class FamilyTreeMemberRoleText {
    global String DNBCodeValue;
    global String Value;
    global FamilyTreeMemberRoleText() {

    }
}
global class InquiryDetail {
    global String CountryISOAlpha2Code;
    global String DUNSNumber;
    global InquiryDetail() {

    }
}
global class Location {
    global List<ints.DAndBresponseTRND.PrimaryAddress> PrimaryAddress;
    global Location() {

    }
}
global class OrderProductResponse {
    global ints.DAndBresponseTRND.OrderProductResponseDetail OrderProductResponseDetail;
    global String ServiceVersionNumber;
    global ints.DAndBresponseTRND.TransactionDetail TransactionDetail;
    global ints.DAndBresponseTRND.TransactionResult TransactionResult;
    global OrderProductResponse() {

    }
}
global class OrderProductResponseDetail {
    global ints.DAndBresponseTRND.InquiryDetail InquiryDetail;
    global ints.DAndBresponseTRND.Product Product;
    global OrderProductResponseDetail() {

    }
}
global class Organization {
    global ints.DAndBresponseTRND.Assessment Assessment;
    global ints.DAndBresponseTRND.Location Location;
    global ints.DAndBresponseTRND.OrganizationDetail OrganizationDetail;
    global ints.DAndBresponseTRND.OrganizationName_Z OrganizationName;
    global ints.DAndBresponseTRND.SubjectHeader SubjectHeader;
    global ints.DAndBresponseTRND.Telecommunication Telecommunication;
    global Organization() {

    }
}
global class OrganizationDetail {
    global List<ints.DAndBresponseTRND.FamilyTreeMemberRole> FamilyTreeMemberRole;
    global OrganizationDetail() {

    }
}
global class OrganizationName {
    global String Value;
    global OrganizationName() {

    }
}
global class OrganizationName_Z {
    global List<ints.DAndBresponseTRND.OrganizationPrimaryName> OrganizationPrimaryName;
    global OrganizationName_Z() {

    }
}
global class OrganizationPrimaryName {
    global ints.DAndBresponseTRND.OrganizationName OrganizationName;
    global OrganizationPrimaryName() {

    }
}
global class PrimaryAddress {
    global String CountryISOAlpha2Code;
    global String PostalCode;
    global String PrimaryTownName;
    global List<ints.DAndBresponseTRND.StreetAddressLine> StreetAddressLine;
    global String TerritoryAbbreviatedName;
    global String TerritoryOfficialName;
    global PrimaryAddress() {

    }
}
global class Product {
    global String DNBProductID;
    global ints.DAndBresponseTRND.Organization Organization;
    global Product() {

    }
}
global class StreetAddressLine {
    global String LineText;
    global StreetAddressLine() {

    }
}
global class SubjectHeader {
    global String DUNSNumber;
    global SubjectHeader() {

    }
}
global class Telecommunication {
    global List<ints.DAndBresponseTRND.TelephoneNumber> TelephoneNumber;
    global Telecommunication() {

    }
}
global class TelephoneNumber {
    global String InternationalDialingCode;
    global String TelecommunicationNumber;
    global TelephoneNumber() {

    }
}
global class TransactionDetail {
    global String ServiceTransactionID;
    global String TransactionTimestamp;
    global TransactionDetail() {

    }
}
global class TransactionResult {
    global String ResultID;
    global String ResultText;
    global String SeverityText;
    global TransactionResult() {

    }
}
}
