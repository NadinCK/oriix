/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class VedaComprehensiveResponse extends ints.IntegrationResponseObject {
    global List<ints.VedaComprehensiveResponse.account> accounts;
    global List<ints.VedaComprehensiveResponse.address> addresses;
    global String bureauReference;
    global List<ints.VedaComprehensiveResponse.businessName> businessNames;
    global String clientReference;
    global List<ints.VedaComprehensiveResponse.account> commercialCreditFileAccounts;
    global List<ints.VedaComprehensiveResponse.creditEnquiry> commercialCreditFileCreditEnquiries;
    global List<ints.VedaComprehensiveResponse.fileNote> commercialCreditFileFileNotes;
    global List<ints.VedaComprehensiveResponse.message> commercialCreditMessages;
    global List<ints.VedaComprehensiveResponse.configurationDataAttribute> configurationDataAttributes;
    global List<ints.VedaComprehensiveResponse.courtAction> courtActions;
    global List<ints.VedaComprehensiveResponse.creditEnquiry> creditEnquiries;
    global String dateOfBirth;
    global String dateOfBirthFirstReportedDate;
    global String dateOfBirthLastReportedDate;
    global String datetimeGenerated;
    global String datetimeRequested;
    global List<ints.VedaComprehensiveResponse.directorship> directorships;
    global List<ints.VedaComprehensiveResponse.disqualifiedDirectorship> disqualifiedDirectorships;
    global String driversLicenceFirstReportedDate;
    global String driversLicenceLastReportedDate;
    global String driversLicenceNumber;
    global List<ints.VedaComprehensiveResponse.employer> employers;
    global String enquiryId;
    global List<ints.VedaComprehensiveResponse.Error> errors;
    global String familyName;
    global ints.VedaComprehensiveResponse.FileBanReport fileBanReport;
    global List<ints.VedaComprehensiveResponse.fileNote> fileNotes;
    global String firstGivenName;
    global String gender;
    global String genderCode;
    global ints.VedaComprehensiveResponse.GeneralMessages generalMessages;
    global String individualNameFirstReportedDate;
    global String individualNameLastCreditEnquiryDate;
    global String individualNameLastReportedDate;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global String isDeceased;
    global String isDeceasedReportedDate;
    global String lodgedComplaint;
    global String lodgedComplaintReportedDate;
    global String messageId;
    global List<ints.VedaComprehensiveResponse.message> messages;
    global String operatorId;
    global String operatorName;
    global List<String> otherGivenName;
    global List<ints.VedaComprehensiveResponse.otherIdentity> otherIdentities;
    global String permissionType;
    global String permissionTypeCode;
    global List<ints.VedaComprehensiveResponse.personalInsolvency> personalInsolvencies;
    global List<ints.VedaComprehensiveResponse.PossibleMatch> possibleMatches;
    global String primaryMatchIdIndex;
    global String primaryMatchType;
    global String productDataLevel;
    global String productDataLevelCode;
    global String productVersion;
    global List<ints.VedaComprehensiveResponse.message> publicRecordOrConsumerCreditInformationMessages;
    global String responseType;
    global List<ints.VedaComprehensiveResponse.Score> scoreData;
    global List<ints.VedaComprehensiveResponse.DataBlock> summaryData;
    global String xmlRequest;
    global String xmlResponse;
    global VedaComprehensiveResponse() {

    }
global class Characteristic {
    global String characteristicId;
    global String dataLevel;
    global String dataLevelCode;
    global String description;
    global String keyCharacteristic;
    global String unit;
    global String value;
    global String variableName;
    global Characteristic() {

    }
}
global class ContributingFactor {
    global String contributingFactorId;
    global String description;
    global String name;
    global String scoreImpactor;
    global ContributingFactor() {

    }
}
global class DataBlock {
    global List<ints.VedaComprehensiveResponse.Characteristic> characteristic;
    global String name;
    global String type;
    global DataBlock() {

    }
}
global class Error {
    global String detail;
    global String faultActor;
    global String faultCode;
    global String faultString;
    global Error() {

    }
}
global class FileBanReport {
    global String endDate;
    global String isExtended;
    global String reportedDate;
    global FileBanReport() {

    }
}
global class GeneralMessages {
    global String code;
    global String message;
    global GeneralMessages() {

    }
}
global class PossibleMatch {
    global List<ints.VedaComprehensiveResponse.address> addresses;
    global List<ints.VedaComprehensiveResponse.employer> employment;
    global ints.VedaComprehensiveResponse.PrimaryMatch identity;
    global PossibleMatch() {

    }
}
global class PrimaryMatch {
    global String bureauReference;
    global String dateOfBirth;
    global String dateOfBirthFirstReportedDate;
    global String dateOfBirthLastReportedDate;
    global String driversLicenceFirstReportedDate;
    global String driversLicenceLastReportedDate;
    global String driversLicenceNumber;
    global String gender;
    global String genderCode;
    global String idIndex;
    global String individualNameFamilyName;
    global String individualNameFirstGivenName;
    global String individualNameFirstReportedDate;
    global String individualNameLastCreditEnquiryDate;
    global String individualNameLastReportedDate;
    global List<String> individualNameOtherGivenName;
    global String isDeceased;
    global String isDeceasedReportedDate;
    global String lodgedComplaint;
    global String lodgedComplaintReportedDate;
    global String type;
    global PrimaryMatch() {

    }
}
global class Score {
    global List<ints.VedaComprehensiveResponse.ContributingFactor> contributingFactor;
    global String riskOdds;
    global String scoreDataLevel;
    global String scoreDataLevelCode;
    global String scoreId;
    global String scoreMasterscale;
    global String scoreName;
    global String scoreVersion;
    global String scorType;
    global Score() {

    }
}
global class VedaComprehensivedefault {
    global String currentDefaultDateRecorded;
    global String currentDefaultDefaultAmount;
    global String currentDefaultDefaultAmountCurrencyCode;
    global String currentDefaultReasonToReport;
    global String currentDefaultReasonToReportCode;
    global String originalDefaultDateRecorded;
    global String originalDefaultDefaultAmount;
    global String originalDefaultDefaultAmountCurrencyCode;
    global String originalDefaultDefaultReasonToReport;
    global String originalDefaultDefaultReasonToReportCode;
    global String status;
    global String statusCode;
    global String statusDate;
    global VedaComprehensivedefault() {

    }
}
global class account {
    global String accountClosedDate;
    global String accountDataLevel;
    global String accountHolderCount;
    global String accountId;
    global String accountOpenDate;
    global String accountReopenDate;
    global String accountType;
    global String accountTypeCode;
    global String associationInformationDefaultAssociationCeaseDate;
    global String associationInformationDefaultAssociationStartDate;
    global String associationInformationIsSeriousCreditInfringement;
    global String associationInformationLatestCeasedDate;
    global String associationInformationLatestStartDate;
    global String associationInformationSciDate;
    global String dateLastChanged;
    global List<ints.VedaComprehensiveResponse.VedaComprehensivedefault> defaults;
    global List<String> idReferences;
    global String isUnlimitedCredit;
    global String latestCreditProviderClassification;
    global String latestCreditProviderIsLicensee;
    global String latestCreditProviderName;
    global String latestCreditProviderTransferDate;
    global String latestMaximumAmountCredit;
    global String latestMaximumAmountCreditCurrencyCode;
    global String latestUpdateDate;
    global String loanPaymentMethod;
    global String loanPaymentMethodCode;
    global String originalCreditProviderClassification;
    global String originalCreditProviderIsLicensee;
    global String originalCreditProviderName;
    global String originalMaximumAmountCredit;
    global String originalMaximumAmountCreditCurrencyCode;
    global String relationship;
    global String relationshipCode;
    global List<ints.VedaComprehensiveResponse.payment> repaymentHistory;
    global String securedCredit;
    global String securedCreditCode;
    global String termOfLoan;
    global String termType;
    global String termTypeCode;
    global account() {

    }
}
global class address {
    global String countryCode;
    global String firstReportedDate;
    global List<String> idReference;
    global String lastReportedDate;
    global String postcode;
    global String property;
    global String state;
    global String streetName;
    global String streetNumber;
    global String streetType;
    global String suburb;
    global String type;
    global String unitNumber;
    global address() {

    }
}
global class businessName {
    global String businessABN;
    global String businessBureauReference;
    global String businessName;
    global String businessNumber;
    global String businessPreviousStateOrTerritoryRegistrationState;
    global List<String> idReferences;
    global String lastExtractDate;
    global String lastExtractTime;
    global String lastUpdateDate;
    global String lastUpdateTime;
    global String startDate;
    global businessName() {

    }
}
global class configurationDataAttribute {
    global String key;
    global String unit;
    global String value;
    global configurationDataAttribute() {

    }
}
global class courtAction {
    global String actionDate;
    global String coBorrower;
    global String courtActionAmount;
    global String courtActionAmountCurrencyCode;
    global String courtActionStatus;
    global String courtActionStatusCode;
    global String courtActionStatusDate;
    global String courtActionType;
    global String courtType;
    global String creditor;
    global List<String> idReferences;
    global String plaintNumber;
    global String relationship;
    global String relationshipCode;
    global courtAction() {

    }
}
global class creditEnquiry {
    global String accountType;
    global String accountTypeCode;
    global String coBorrower;
    global String creditEnquirerClassification;
    global String creditEnquirerName;
    global String enquiryAmount;
    global String enquiryAmountCurrencyCode;
    global String enquiryClientReference;
    global String enquiryDate;
    global List<String> idReferences;
    global String relationship;
    global String relationshipCode;
    global String type;
    global creditEnquiry() {

    }
}
global class directorship {
    global String dateAppointed;
    global String dateCeased;
    global String dateLastKnownAsDirector;
    global List<String> idReferences;
    global String lastExtractDate;
    global String lastExtractTime;
    global String lastUpdateDate;
    global String lastUpdateTime;
    global String organisationABN;
    global String organisationBureauReference;
    global String organisationName;
    global String organisationNameStartDate;
    global String organisationOrganisationNumber;
    global String organisationStatus;
    global String organisationStatusCode;
    global String organisationType;
    global String organisationTypeCode;
    global String type;
    global directorship() {

    }
}
global class disqualifiedDirectorship {
    global String dateDisqualified;
    global String dateDisqualifiedUntil;
    global List<String> idReferences;
    global String lastExtractDate;
    global String lastExtractTime;
    global String lastUpdateDate;
    global String lastUpdateTime;
    global disqualifiedDirectorship() {

    }
}
global class employer {
    global String firstReportedDate;
    global List<String> idReferences;
    global String lastReportedDate;
    global String name;
    global String occupation;
    global String type;
    global employer() {

    }
}
global class fileNote {
    global String dateRecorded;
    global List<String> idReferences;
    global String note;
    global fileNote() {

    }
}
global class message {
    global String code;
    global String message;
    global message() {

    }
}
global class otherIdentity {
    global String bureauReference;
    global String dateOfBirth;
    global String dateOfBirthFirstReportedDate;
    global String dateOfBirthLastReportedDate;
    global String driversLicenceFirstReportedDate;
    global String driversLicenceLastReportedDate;
    global String driversLicenceNumber;
    global String gender;
    global String genderCode;
    global String idIndex;
    global String individualNameFamilyName;
    global String individualNameFirstGivenName;
    global String individualNameFirstReportedDate;
    global String individualNameLastCreditEnquiryDate;
    global String individualNameLastReportedDate;
    global List<String> individualNameOtherGivenName;
    global String isDeceased;
    global String isDeceasedReportedDate;
    global String lodgedComplaint;
    global String lodgedComplaintReportedDate;
    global String type;
    global otherIdentity() {

    }
}
global class payment {
    global String period;
    global String status;
    global payment() {

    }
}
global class personalInsolvency {
    global String administrationIdDistrict;
    global String administrationIdNumber;
    global String administrationIdProceedingsStatus;
    global String administrationIdYear;
    global String coBorrower;
    global String dateDeclared;
    global List<String> idReferences;
    global String relationship;
    global String relationshipCode;
    global String status;
    global String statusCode;
    global String statusDate;
    global String text;
    global String type;
    global String typeCode;
    global personalInsolvency() {

    }
}
}
