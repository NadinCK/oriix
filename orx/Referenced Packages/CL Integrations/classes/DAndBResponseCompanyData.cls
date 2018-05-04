/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DAndBResponseCompanyData extends ints.IntegrationResponseObject {
    global String errorMessage;
    global ints.DAndBResponseCompanyData.GetCleanseMatchResponse GetCleanseMatchResponse;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global String requestBody;
    global String responseBody;
    global ints.DAndBResponseCompanyData.TransactionResult TransactionResult;
    global DAndBResponseCompanyData() {

    }
    global ints.DAndBResponseCompanyData parse(String json) {
        return null;
    }
global class Address {
    global String CountryISOAlpha2Code;
    global String TerritoryName;
    global Address() {

    }
}
global class FamilyTreeMemberRole {
    global ints.DAndBResponseCompanyData.MatchDataCriteriaText FamilyTreeMemberRoleText;
    global FamilyTreeMemberRole() {

    }
}
global class GetCleanseMatchResponse {
    global ints.DAndBResponseCompanyData.GetCleanseMatchResponseDetail GetCleanseMatchResponseDetail;
    global String ServiceVersionNumber;
    global ints.DAndBResponseCompanyData.TransactionDetail TransactionDetail;
    global ints.DAndBResponseCompanyData.TransactionResult TransactionResult;
    global GetCleanseMatchResponse() {

    }
}
global class GetCleanseMatchResponseDetail {
    global ints.DAndBResponseCompanyData.InquiryDetail InquiryDetail;
    global Object InquiryReferenceDetail;
    global ints.DAndBResponseCompanyData.MatchResponseDetail MatchResponseDetail;
    global GetCleanseMatchResponseDetail() {

    }
}
global class InquiryDetail {
    global ints.DAndBResponseCompanyData.Address Address;
    global String SubjectName;
    global InquiryDetail() {

    }
}
global class MailingAddress {
    global String CountryISOAlpha2Code;
    global Boolean UndeliverableIndicator;
    global MailingAddress() {

    }
}
global class MatchBasis {
    global Boolean EndIndicator;
    global ints.DAndBResponseCompanyData.MatchDataCriteriaText MatchBasisText;
    global Boolean SeniorPrincipalIndicator;
    global String SubjectTypeText;
    global MatchBasis() {

    }
}
global class MatchCandidate {
    global String DisplaySequence;
    global String DUNSNumber;
    global List<ints.DAndBResponseCompanyData.FamilyTreeMemberRole> FamilyTreeMemberRole;
    global ints.DAndBResponseCompanyData.MailingAddress MailingAddress;
    global ints.DAndBResponseCompanyData.MatchQualityInformation MatchQualityInformation;
    global ints.DAndBResponseCompanyData.MatchDataCriteriaText OperatingStatusText;
    global ints.DAndBResponseCompanyData.OrganizationPrimaryName OrganizationPrimaryName;
    global ints.DAndBResponseCompanyData.PrimaryAddress PrimaryAddress;
    global Boolean StandaloneOrganizationIndicator;
    global ints.DAndBResponseCompanyData.TelephoneNumber TelephoneNumber;
    global ints.DAndBResponseCompanyData.OrganizationPrimaryName TradeStyleName;
    global MatchCandidate() {

    }
}
global class MatchDataCriteriaText {
    global String Value;
    global MatchDataCriteriaText() {

    }
}
global class MatchDataProfileComponent {
    global ints.DAndBResponseCompanyData.MatchDataCriteriaText MatchDataProfileComponentTypeText;
    global String MatchDataProfileComponentValue;
    global MatchDataProfileComponent() {

    }
}
global class MatchGradeComponent {
    global String MatchGradeComponentRating;
    global String MatchGradeComponentScore;
    global ints.DAndBResponseCompanyData.MatchDataCriteriaText MatchGradeComponentTypeText;
    global MatchGradeComponent() {

    }
}
global class MatchQualityInformation {
    global String ConfidenceCodeValue;
    global List<ints.DAndBResponseCompanyData.MatchBasis> MatchBasis;
    global List<ints.DAndBResponseCompanyData.MatchDataProfileComponent> MatchDataProfileComponent;
    global String MatchDataProfileComponentCount;
    global String MatchDataProfileText;
    global List<ints.DAndBResponseCompanyData.MatchGradeComponent> MatchGradeComponent;
    global String MatchGradeComponentCount;
    global String MatchGradeText;
    global MatchQualityInformation() {

    }
}
global class MatchQualityInformation_Z {
    global String ConfidenceCodeValue;
    global List<ints.DAndBResponseCompanyData.MatchBasis> MatchBasis;
    global List<ints.DAndBResponseCompanyData.MatchDataProfileComponent> MatchDataProfileComponent;
    global String MatchDataProfileComponentCount;
    global String MatchDataProfileText;
    global List<ints.DAndBResponseCompanyData.MatchGradeComponent> MatchGradeComponent;
    global String MatchGradeComponentCount;
    global String MatchGradeText;
    global MatchQualityInformation_Z() {

    }
}
global class MatchResponseDetail {
    global String CandidateMatchedQuantity;
    global List<ints.DAndBResponseCompanyData.MatchCandidate> MatchCandidate;
    global ints.DAndBResponseCompanyData.MatchDataCriteriaText MatchDataCriteriaText;
    global MatchResponseDetail() {

    }
}
global class OrganizationPrimaryName {
    global ints.DAndBResponseCompanyData.MatchDataCriteriaText OrganizationName;
    global OrganizationPrimaryName() {

    }
}
global class PrimaryAddress {
    global String CountryISOAlpha2Code;
    global String PostalCode;
    global String PrimaryTownName;
    global List<ints.DAndBResponseCompanyData.StreetAddressLine> StreetAddressLine;
    global String TerritoryAbbreviatedName;
    global Boolean UndeliverableIndicator;
    global PrimaryAddress() {

    }
}
global class PrimaryAddress_Z {
    global String CountryISOAlpha2Code;
    global String PostalCode;
    global String PostalCodeExtensionCode;
    global String PrimaryTownName;
    global List<ints.DAndBResponseCompanyData.StreetAddressLine> StreetAddressLine;
    global String TerritoryAbbreviatedName;
    global Boolean UndeliverableIndicator;
    global PrimaryAddress_Z() {

    }
}
global class StreetAddressLine {
    global String LineText;
    global StreetAddressLine() {

    }
}
global class TelephoneNumber {
    global String TelecommunicationNumber;
    global Boolean UnreachableIndicator;
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
