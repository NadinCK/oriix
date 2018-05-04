/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class EquifaxUKCRResponseObject {
    global String addressMatchStatus;
    global List<ints.EquifaxUKCRResponseObject.Attribute> attributes;
    global List<ints.ElectoralRollObject> electoralRollDataList;
    global List<ints.EquifaxUKCRResponseObject.HardCreditPullResponse> hardCreditResponse;
    global String highRiskPep;
    global String highRiskRca;
    global String highRiskSip;
    global List<ints.InsightDataObject> insightDataList;
    global List<ints.LinkedAddressData> linkedAddressData;
    global Map<String,String> nonAddressSpecificDataMap;
    global List<ints.NoticeOfCorrection> NoticeOfCorrectionDateList;
    global String positive;
    global String rawRequestXML;
    global String rawResponseXML;
    global List<ints.RollingRegisterData> rollingRegisterDataList;
    global String sanctions;
    global String scoreLabel;
    global List<ints.EquifaxUKCRResponseObject.Score> scores;
    global String standardRiskPep;
    global String standardRiskRca;
    global String standardRiskSip;
    global List<ints.SuppliedAddressData> suppliedAddressData;
    global String value;
    global String watchlistCheckCitizenship;
    global String watchlistCheckDOB;
    global String watchlistCheckGender;
    global String watchlistCheckJurisdiction;
    global String watchlistCheckName;
    global List<ints.EquifaxUKCRResponseObject.WatchlistCheck> watchlistChecks;
    global String watchlistCheckTransactionReference;
    global EquifaxUKCRResponseObject() {

    }
    global void populateAttributes(Map<String,String> attributeMap) {

    }
    global void populateScore(Map<String,String> scoreMap) {

    }
    global void populateWatchlistChecks(Map<String,String> watchlistCheckMap) {

    }
global class Attribute {
    global String description;
    global String identifier;
    global String numericValue;
    global String personLevel;
    global String reason;
    global String value;
    global Attribute() {

    }
}
global class HardCreditPullResponse {
    global String addressID;
    global String addressMatchStatus;
    global String addrNumber;
    global String county;
    global String index;
    global String matchedAddressSouceFrom;
    global String noticeOfCorrectionOrDisputePresent;
    global String postcode;
    global String postTown;
    global String street1;
    global String street2;
    global HardCreditPullResponse() {

    }
}
global class Score {
    global String positive;
    global String scoreLabel;
    global String value;
    global Score() {

    }
}
global class WatchlistCheck {
    global String alertIdentifier;
    global String checkName;
    global String matchCategory;
    global String matchIdentifier;
    global String percentageMatch;
    global String relatedName;
    global WatchlistCheck() {

    }
}
}
