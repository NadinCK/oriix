/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class BDSResponse extends ints.IntegrationResponseObject {
    global String errorMessage;
    global String externalId;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global String internalId;
    global String requestBody;
    global String responseBody;
    global ints.BDSResponse.Score score;
    global BDSResponse() {

    }
global class DfpModelData {
    global String behaviorBackspaces;
    global String behaviorCopyPaste;
    global String behaviorDeletes;
    global String behaviorDigraphAvg;
    global String behaviorDwellTimeAvg;
    global String behaviorFieldChanges;
    global String behaviorFlightTimeAvg;
    global String behaviorPagesVisited;
    global String behaviorPageViewTime;
    global String behaviorPauses;
    global String behaviorTermsVisited;
    global String behaviorTrigraphAvg;
    global String behaviorTypingSpeed;
    global String behaviorUniquePagesVisited;
    global String deviceAddressType;
    global String deviceBrowser;
    global String deviceBrowserType;
    global String deviceCityName;
    global String deviceCountryIsoCode;
    global String deviceISP;
    global String deviceIsProxy;
    global String deviceLatitude;
    global String deviceLongitude;
    global String deviceOrganization;
    global String devicePlatform;
    global String devicePlatformBits;
    global String devicePlatformVersion;
    global String deviceRssReader;
    global String deviceType;
    global String deviceUserType;
    global String deviceVersion;
    global String deviceZipCode;
    global String emailDataDob;
    global String emailDataDomainAge;
    global String emailDataDomainExists;
    global String emailDataDomainrisklevelId;
    global String emailDataEmailAge;
    global String emailDataEmailExists;
    global String emailDataEname;
    global String emailDataFraudRisk;
    global String emailDataGender;
    global String emailDataIpRisklevelId;
    global String emailDataLocation;
    global String emailDataSmfriends;
    global String emailDataTotalhits;
    global String fraudInformationMismatch;
    global String fraudUnusualBehavior;
    global String fraudUnusualDevice;
    global String locationClassification;
    global String webEmailCoCount;
    global String webEmailCount;
    global String webFacebookMatch;
    global String webLinkedInMatch;
    global String webTwitterMatch;
    global DfpModelData() {

    }
}
global class Score {
    global ints.BDSResponse.DfpModelData DFP_DATA;
    global Score() {

    }
}
}
