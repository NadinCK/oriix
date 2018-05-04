/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class VedaPPSRSearchRes extends ints.IntegrationResponseObject {
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global String message;
    global String rawRequest;
    global String rawResponse;
    global List<ints.VedaPPSRSearchRes.SerialNumberSearchResponse> serialNumSearchResp;
    global VedaPPSRSearchRes() {

    }
global class AddressForService {
    global String addressee;
    global String emailAddress;
    global String faxNumber;
    global List<ints.VedaPPSRSearchRes.MailingAddress> mailingAddress;
    global String physicalAddress;
    global AddressForService() {

    }
}
global class ChangeHistory {
    global String changeNumber;
    global String changeType;
    global String registrationChangeTime;
    global ChangeHistory() {

    }
}
global class CustomersUserDefinedFields {
    global String fieldName;
    global String fieldValue;
    global CustomersUserDefinedFields() {

    }
}
global class Grantors {
    global String grantorType;
    global List<ints.VedaPPSRSearchRes.Individual> indv;
    global List<ints.VedaPPSRSearchRes.Organisation> organisation;
    global Grantors() {

    }
}
global class Individual {
    global String familyName;
    global String givenName;
    global Individual() {

    }
}
global class MailingAddress {
    global String countryName;
    global String iSO3166CountryCode;
    global String line1;
    global String line2;
    global String line3;
    global String locality;
    global String postcode;
    global String state;
    global MailingAddress() {

    }
}
global class NevdisData {
    global String stolenDet;
    global List<ints.VedaPPSRSearchRes.VehicleDetail> vehicleDetail;
    global List<ints.VedaPPSRSearchRes.VehicleIdentifier> vehicleIdentifier;
    global String verificationStatus;
    global NevdisData() {

    }
}
global class Organisation {
    global String organisationName;
    global String organisationNumber;
    global String organisationNumberType;
    global Organisation() {

    }
}
global class Registration {
    global String expiryDate;
    global String plateNumber;
    global Registration() {

    }
}
global class RegistrationDetail {
    global List<ints.VedaPPSRSearchRes.AddressForService> addressForService;
    global String areAssetsSubjectToControl;
    global String areProceedsClaimed;
    global String attachments;
    global String changeNumber;
    global String collateralClassDescription;
    global String collateralClassType;
    global String collateralDescription;
    global String collateralType;
    global String earlierRegistrationNumber;
    global String givingOfNoticeIdentifier;
    global List<ints.VedaPPSRSearchRes.Grantors> grantors;
    global String isInventory;
    global String isMigrated;
    global String isPMSI;
    global String isSecurityInterestRegistrationKind;
    global String isSubordinate;
    global String isTransitional;
    global String migrationDetail;
    global String proceedsClaimedDescription;
    global String registrationChangeTime;
    global String registrationEndTime;
    global String registrationKind;
    global String registrationNumber;
    global String registrationStartTime;
    global List<ints.VedaPPSRSearchRes.SecuredParties> securedParties;
    global List<ints.VedaPPSRSearchRes.SerialNumberDetails> serialNumberDetails;
    global RegistrationDetail() {

    }
}
global class ResultDetail {
    global List<ints.VedaPPSRSearchRes.ChangeHistory> changeHist;
    global List<ints.VedaPPSRSearchRes.RegistrationDetail> registrationDetail;
    global String restrictionDetail;
    global String resultSequenceNumber;
    global ResultDetail() {

    }
}
global class RetrieveSearchCertificateResponseType {
    global String accessToSearchCertificateExpiryTime;
    global String attachments;
    global List<ints.VedaPPSRSearchRes.CustomersUserDefinedFields> custField;
    global String customersRequestMessageId;
    global String requestProcessedDateTime;
    global String searchCertificateCreatedDateTime;
    global String searchCertificateFile;
    global String searchCertificateFileName;
    global String searchCertificateNumber;
    global RetrieveSearchCertificateResponseType() {

    }
}
global class SearchBySerialNumberResponseType {
    global List<ints.VedaPPSRSearchRes.CustomersUserDefinedFields> custList;
    global String customersRequestMessageId;
    global String requestProcessedDateTime;
    global List<ints.VedaPPSRSearchRes.SearchCriteria> searchCriteria;
    global List<ints.VedaPPSRSearchRes.SearchResult> searchResult;
    global List<ints.VedaPPSRSearchRes.SearchSummary> searchSummary;
    global SearchBySerialNumberResponseType() {

    }
}
global class SearchCriteria {
    global String includeArchived;
    global String includeCurrent;
    global String includeExpired;
    global String includeRemoved;
    global String pointInTimeDateTime;
    global String serialNumber;
    global String serialNumberType;
    global SearchCriteria() {

    }
}
global class SearchResult {
    global List<ints.VedaPPSRSearchRes.NevdisData> nevdisData;
    global List<ints.VedaPPSRSearchRes.ResultDetail> resultDetail;
    global String searchResultRetrievedDateTime;
    global String transitionalPeriodMessage;
    global SearchResult() {

    }
}
global class SearchSummary {
    global String accessToSearchResultExpiryTime;
    global String resultCount;
    global String searchExecutedDateTime;
    global String searchNumber;
    global String searchType;
    global SearchSummary() {

    }
}
global class SecuredParties {
    global List<ints.VedaPPSRSearchRes.Individual> indv;
    global List<ints.VedaPPSRSearchRes.Organisation> organisation;
    global String securedPartyType;
    global SecuredParties() {

    }
}
global class SerialNumberDetails {
    global String additionalAircraftDetails;
    global String additionalVehicleDetails;
    global String serialNumber;
    global String serialNumberType;
    global SerialNumberDetails() {

    }
}
global class SerialNumberSearchResponse {
    global List<ints.VedaPPSRSearchRes.RetrieveSearchCertificateResponseType> retSrcCertResType;
    global List<ints.VedaPPSRSearchRes.SearchBySerialNumberResponseType> searchBySerialNumberResponseType;
    global String searchCertificateNumber;
    global SerialNumberSearchResponse() {

    }
}
global class VehicleDescription {
    global String bodyType;
    global String colour;
    global String complianceYearMonth;
    global String engineNumber;
    global String make;
    global String manufactureYear;
    global String model;
    global String vehicleType;
    global VehicleDescription() {

    }
}
global class VehicleDetail {
    global String jurisdiction;
    global String jurisdictionParticipation;
    global List<ints.VedaPPSRSearchRes.Registration> reg;
    global List<ints.VedaPPSRSearchRes.VehicleDescription> vDesp;
    global VehicleDetail() {

    }
}
global class VehicleIdentifier {
    global String identifierType;
    global String identifierValue;
    global VehicleIdentifier() {

    }
}
}
