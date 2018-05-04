/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class IDMatrixResponse extends ints.IntegrationResponseObject {
    global ints.IDMatrixResponse.AccuityResultsRecord accuityResultsRecord;
    global List<ints.IDMatrixResponse.AnalysisResult> analysisResults;
    global String clientReference;
    global ints.IDMatrixResponse.DeviceIntelligenceResponse deviceIntelligenceResponse;
    global String enquiryId;
    global String errorStatus;
    global String faultactor;
    global String faultcode;
    global String faultstring;
    global ints.IDMatrixResponse.FraudAssessmentResponse fraudAssessmentResponse;
    global String indicator;
    global String messageId;
    global String overallOutcome;
    global List<ints.IDMatrixResponse.PhoneVerificationResponse> phoneVerificationResponses;
    global String profileName;
    global String profileVersion;
    global String relatesTo;
    global String requestXMLBody;
    global String responseXMLBody;
    global List<ints.IDMatrixResponse.rulesResult> rulesResults;
    global List<ints.IDMatrixResponse.SearchResult> searchResults;
    global String selfVerificationUrl;
    global ints.IDMatrixResponse.SharedFraudRecord sharedFraudRecord;
    global String totalPoint;
    global List<ints.IDMatrixResponse.VEVORecord> vevoRecords;
    global IDMatrixResponse() {

    }
global class AccuityResultsRecord {
    global String accuityId;
    global String country;
    global String countryName;
    global String createdDate;
    global String entityDetailsId;
    global String entityDetailsVersion;
    global String entityId;
    global String entitySource;
    global String entityType;
    global String entityVersion;
    global String isHit;
    global String lastUpdateDate;
    global String listCode;
    global String listId;
    global List<ints.IDMatrixResponse.Match> match;
    global String matched;
    global String matchOn;
    global String matchType;
    global String name;
    global String searchResultName;
    global List<ints.IDMatrixResponse.SFD> sfd;
    global String source;
    global String stopDescriptor;
    global String title;
    global String totalBlocked;
    global String totalChanged;
    global String totalGood;
    global String totalMatches;
    global String totalOpen;
    global AccuityResultsRecord() {

    }
}
global class AnalysisResult {
    global String addressMatch;
    global String category;
    global String dateOfBirthMatch;
    global String documentIdentifierMatch;
    global String filteredScore;
    global String minimumValue;
    global String nameMatch;
    global String points;
    global String rawScore;
    global String searchName;
    global String weight;
    global AnalysisResult() {

    }
}
global class AssessmentFactor {
    global String result;
    global String score;
    global String threshold;
    global String type;
    global String weight;
    global AssessmentFactor() {

    }
}
global class DeviceIntelligenceResponse {
    global String deviceStatus;
    global String policyScore;
    global String policyScoreReasonCode;
    global DeviceIntelligenceResponse() {

    }
}
global class Entity {
    global String country;
    global String countryName;
    global String countryNameNil;
    global String countryNil;
    global String createdDate;
    global String entityDetailId;
    global String entityDetailVersion;
    global String entityId;
    global String entitySource;
    global String entityType;
    global String entityVersion;
    global String lastUpdatedDate;
    global String listCode;
    global String listId;
    global String name;
    global List<ints.IDMatrixResponse.SFD> sdf;
    global String source;
    global String title;
    global Entity() {

    }
}
global class FraudAssessmentResponse {
    global List<ints.IDMatrixResponse.AssessmentFactor> assessmentFactors;
    global String result;
    global String score;
    global String threshold;
    global FraudAssessmentResponse() {

    }
}
global class Match {
    global List<ints.IDMatrixResponse.Entity> entity;
    global String matchOn;
    global String matchType;
    global String ruleMatched;
    global String stopDescriptor;
    global Match() {

    }
}
global class PhoneVerificationResponse {
    global String phoneNumber;
    global String phoneStatus;
    global PhoneVerificationResponse() {

    }
}
global class SFD {
    global String name;
    global String sfd;
    global SFD() {

    }
}
global class SearchResult {
    global String currentAddressMatchScore;
    global String currentAddressMatchScoreWeight;
    global String dateOfDirth;
    global String familyNameMatchIndicator;
    global String familyNameMatchScore;
    global String familyNameMatchScoreWeight;
    global String familyNameSearchValue;
    global String firstNameMatchIndicator;
    global String firstNameMatchScore;
    global String firstNameMatchScoreWeight;
    global String firstNameSearchValue;
    global String gender;
    global String individualMatchScore;
    global String individualMatchScoreWeight;
    global String matchIndicator;
    global String matchScore;
    global String otherNameMatchIndicator;
    global String otherNameMatchScore;
    global String otherNameMatchScoreWeight;
    global String otherNameSearchValue;
    global String postcodeMatchIndicator;
    global String postcodeMatchScore;
    global String postcodeMatchScoreWeight;
    global String postcodeSearchValue;
    global String searchName;
    global String searchYype;
    global String serviceResultCode;
    global String serviceResultDetail;
    global String serviceResultString;
    global String stateMatchIndicator;
    global String stateMatchScore;
    global String stateMatchScoreWeight;
    global String stateSearchValue;
    global String streetNameMatchIndicator;
    global String streetNameMatchScore;
    global String streetNameMatchScoreWeight;
    global String streetNameSearchValue;
    global String streetNumberMatchIndicator;
    global String streetNumberMatchScore;
    global String streetNumberMatchScoreWeight;
    global String streetNumberSearchValue;
    global String streetTypeSearchValue;
    global String suburbMatchIndicator;
    global String suburbMatchScore;
    global String suburbMatchScoreWeight;
    global String suburbSearchValue;
    global SearchResult() {

    }
}
global class SharedFraudPhoneNumber {
    global String phoneNumber;
    global String type;
    global SharedFraudPhoneNumber() {

    }
}
global class SharedFraudRecord {
    global List<ints.IDMatrixResponse.SharedFraudaddress> addresses;
    global String dateFraudOccured;
    global String driversLicenceNumber;
    global String employer;
    global String employmentStatus;
    global String fraudFileNumber;
    global String fraudSubjectRole;
    global String fraudSubtype;
    global String fraudType;
    global String fraudTypeCode;
    global String otherComment;
    global String passportNumber;
    global List<ints.IDMatrixResponse.SharedFraudPhoneNumber> phoneNumbers;
    global String product;
    global String productCode;
    global String referenceNumber;
    global String reportingSubscriber;
    global SharedFraudRecord() {

    }
}
global class SharedFraudaddress {
    global String country;
    global String postcode;
    global String state;
    global String streetName;
    global String streetNumber;
    global String streetType;
    global String suburb;
    global String unitNumber;
    global SharedFraudaddress() {

    }
}
global class VEVORecord {
    global String location;
    global String visaApplicant;
    global String visaClassSubclass;
    global String visaDateOfExpiry;
    global String visaDateOfGrant;
    global String visaWorkEntitlement;
    global VEVORecord() {

    }
}
global class rulesResult {
    global String indicator;
    global String name;
    global String reason;
    global rulesResult() {

    }
}
}
