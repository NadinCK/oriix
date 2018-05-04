/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DunAndBradstreetResponse extends ints.IntegrationResponseObject {
    global List<ints.DunAndBradstreetResponse.Aae> aaes;
    global List<ints.DunAndBradstreetResponse.ContactAddress> addressDetails;
    global List<ints.DunAndBradstreetResponse.Bankruptcy> bankruptcies;
    global String birthDay;
    global String birthMonth;
    global String birthYear;
    global String consumerId;
    global String country;
    global List<ints.DunAndBradstreetResponse.Column> defaultColumns;
    global List<ints.DunAndBradstreetResponse.Defaults> defaults;
    global List<ints.DunAndBradstreetResponse.Directorship> directorships;
    global String disclosure;
    global String driversLicenceNumber;
    global String employer;
    global List<ints.DunAndBradstreetResponse.Enquiry> enquiries;
    global List<ints.DunAndBradstreetResponse.Column> enquiriesColumns;
    global String enquiryDay;
    global String enquiryMonth;
    global String enquiryType;
    global String enquiryYear;
    global String environment;
    global List<ints.DunAndBradstreetResponse.Error> errors;
    global List<ints.DunAndBradstreetResponse.FileNote> fileNotes;
    global String firstName;
    global String firstRecordedDay;
    global String firstRecordedMonth;
    global String firstRecordedYear;
    global String hasBankruptcy;
    global String hasDefault;
    global String hasDirector;
    global String hasEnquiry;
    global String hasError;
    global String hasFileNote;
    global String hasJudgment;
    global String hasOtherPublicRecord;
    global String hasSummary;
    global String hasSummons;
    global String hasWarning;
    global String indSegId;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global String internalReference;
    global String isMinor;
    global List<ints.DunAndBradstreetResponse.Column> judgmentColumns;
    global List<ints.DunAndBradstreetResponse.Judgments> judgments;
    global List<ints.DunAndBradstreetResponse.KeyInfluencingFactor> keyInfluencingFactors;
    global String newFileCreated;
    global String otherName;
    global List<ints.DunAndBradstreetResponse.OtherPublicRecord> otherPublicRecords;
    global String personFirstName;
    global String personOtherName;
    global String personSurname;
    global List<ints.DunAndBradstreetResponse.PossibleMatchAddress> possibleMchAddress;
    global String possibleMchDobDay;
    global String possibleMchDobMonth;
    global String possibleMchDobYear;
    global String possibleMchFirstName;
    global String possibleMchFirstRecordedDay;
    global String possibleMchFirstRecordedMonth;
    global String possibleMchFirstRecordedYear;
    global String possibleMchIndConsumerId;
    global String possibleMchIndSegId;
    global String possibleMchOtherName;
    global String possibleMchSegId;
    global String possibleMchSequence;
    global String possibleMchSex;
    global String possibleMchSurname;
    global String productCode;
    global String rawRequest;
    global String rawResponse;
    global String score;
    global String scoreBand;
    global String scorecardIndicator;
    global String scoreDay;
    global List<ints.DunAndBradstreetResponse.ScoreMeasureType> scoreMeasures;
    global String scoreMonth;
    global String scoreName;
    global String scoreYear;
    global String segId;
    global List<ints.DunAndBradstreetResponse.SeriousCreditInfringement> seriousCreditInfringements;
    global String sex;
    global List<ints.DunAndBradstreetResponse.SummaryItem> summary;
    global String summarySegId;
    global String summarySequence;
    global List<ints.DunAndBradstreetResponse.Summonses> summonses;
    global List<ints.DunAndBradstreetResponse.Column> summonsesColumns;
    global String surname;
    global String trailerSegId;
    global String uniqueCustomerReference;
    global String version;
    global List<ints.DunAndBradstreetResponse.Warning> warnings;
    global DunAndBradstreetResponse() {

    }
global class Aae {
    global String accountTypeCode;
    global String accountTypeDesc;
    global String amount;
    global String applicationDay;
    global String applicationHour;
    global String applicationMinute;
    global String applicationMonth;
    global String applicationSecond;
    global String applicationYear;
    global String creditObligationCode;
    global String creditObligationDesc;
    global String day;
    global String hour;
    global String minute;
    global String month;
    global String organisation;
    global String purpose;
    global String second;
    global String segId;
    global String sequence;
    global String uniqueCustomerReference;
    global String year;
    global Aae() {

    }
}
global class Bankruptcy {
    global String actionTypeCode;
    global String actionTypeDesc;
    global String comments;
    global String court;
    global String declaredDay;
    global String declaredMonth;
    global String declaredYear;
    global String dischargeAnnulmentDay;
    global String dischargeAnnulmentMonth;
    global String dischargeAnnulmentYear;
    global String proceedingsDay;
    global String proceedingsMonth;
    global String proceedingsNumber;
    global String proceedingsYear;
    global String segId;
    global String sequence;
    global Bankruptcy() {

    }
}
global class Column {
    global String name;
    global Column() {

    }
}
global class ContactAddress {
    global String buildingName;
    global String buildingName2;
    global String city;
    global String isCurrent;
    global String isMailing;
    global String isPriorAddress;
    global String LastRecordedDay;
    global String LastRecordedMonth;
    global String LastRecordedYear;
    global String Postcode;
    global String recordedDay;
    global String recordedMonth;
    global String recordedYear;
    global String State;
    global String street;
    global String streetNo;
    global String streetType;
    global String unitNo;
    global ContactAddress() {

    }
}
global class Defaults {
    global String accountTypeCode;
    global String accountTypeDesc;
    global String creditObligationCode;
    global String creditObligationDesc;
    global String currentAmount;
    global String currentCreditProvider;
    global String currentCustomerReference;
    global String currentReasonToReportCode;
    global String currentReasonToReportDesc;
    global String defaultDay;
    global String defaultMonth;
    global String defaultSegId;
    global String defaultYear;
    global String lastPaymentDay;
    global String lastPaymentMonth;
    global String lastPaymentYear;
    global String originalAmount;
    global String originalCreditProvider;
    global String originalCustomerReference;
    global String originalReasonToReportCode;
    global String originalReasonToReportDesc;
    global String purpose;
    global String sequence;
    global String statusCode;
    global String statusDesc;
    global Defaults() {

    }
}
global class Directorship {
    global String companyName;
    global String companyNumber;
    global String companyStatus;
    global String dataSource;
    global String dateAppointedDay;
    global String dateAppointedMonth;
    global String dateAppointedYear;
    global String dateCeasedDay;
    global String dateCeasedMonth;
    global String dateCeasedYear;
    global String detailsType;
    global String dunsNumber;
    global String extractDay;
    global String extractMonth;
    global String extractYear;
    global String segId;
    global String sequence;
    global Directorship() {

    }
}
global class Enquiry {
    global String accountTypeCode;
    global String accountTypeDesc;
    global String amount;
    global String creditObligationCode;
    global String creditObligationDesc;
    global String enqDay;
    global String enqHour;
    global String enqMinute;
    global String enqMonth;
    global String enqSecond;
    global String enqYear;
    global String organisation;
    global String purpose;
    global String segId;
    global String sequence;
    global String uniqueCustomerReference;
    global Enquiry() {

    }
}
global class Error {
    global String code;
    global String description;
    global String elementName;
    global String segId;
    global String sequence;
    global String xPath;
    global Error() {

    }
}
global class FileNote {
    global String day;
    global String fnType;
    global String month;
    global String segId;
    global String sequence;
    global String text;
    global String year;
    global FileNote() {

    }
}
global class Judgments {
    global String actionTypeCode;
    global String actionTypeDesc;
    global String amount;
    global String comments;
    global String court;
    global String creditor;
    global String lodgedDay;
    global String lodgedMonth;
    global String lodgedYear;
    global String paidDay;
    global String paidMonth;
    global String paidYear;
    global String plaintiffName;
    global String plaintiffNumber;
    global String segId;
    global String sequence;
    global String status;
    global Judgments() {

    }
}
global class KeyInfluencingFactor {
    global String code;
    global String description;
    global KeyInfluencingFactor() {

    }
}
global class OtherPublicRecord {
    global String actionTypeCode;
    global String actionTypeDesc;
    global String amount;
    global String comments;
    global String court;
    global String creditor;
    global String lodgedDay;
    global String lodgedMonth;
    global String lodgedYear;
    global String paidDay;
    global String paidMonth;
    global String paidYear;
    global String plaintiffName;
    global String plaintiffNumber;
    global String segId;
    global String sequence;
    global String status;
    global OtherPublicRecord() {

    }
}
global class PossibleMatchAddress {
    global String possibleMchBuildingName;
    global String possibleMchBuildingName2;
    global String possibleMchCity;
    global String possibleMchIsCurrent;
    global String possibleMchIsMailing;
    global String possibleMchIsPriorAddress;
    global String possibleMchPostcode;
    global String possibleMchRecordedDay;
    global String possibleMchRecordedMonth;
    global String possibleMchRecordedYear;
    global String possibleMchState;
    global String possibleMchStreet;
    global String possibleMchStreetNo;
    global String possibleMchStreetType;
    global String possibleMchUnitNo;
    global PossibleMatchAddress() {

    }
}
global class ScoreMeasureType {
    global String measureType;
    global String value;
    global ScoreMeasureType() {

    }
}
global class SeriousCreditInfringement {
    global String accountTypeCode;
    global String accountTypeDesc;
    global String creditObligationCode;
    global String creditObligationDesc;
    global String currentAmount;
    global String currentCreditProvider;
    global String currentCustomerReference;
    global String currentReasonToReportCode;
    global String currentReasonToReportDesc;
    global String dateOfDefaultDay;
    global String dateOfDefaultMonth;
    global String dateOfDefaultYear;
    global String lastPaymentDay;
    global String lastPaymentMonth;
    global String lastPaymentYear;
    global String originalAmount;
    global String originalCreditProvider;
    global String originalCustomerReference;
    global String originalReasonToReportCode;
    global String originalReasonToReportDesc;
    global String purpose;
    global String segId;
    global String sequence;
    global String statusCode;
    global String statusDesc;
    global SeriousCreditInfringement() {

    }
}
global class SummaryItem {
    global String sAmount;
    global String sCount;
    global String segId;
    global String sequence;
    global String sType;
    global SummaryItem() {

    }
}
global class Summonses {
    global String actionTypeCode;
    global String actionTypeDesc;
    global String amount;
    global String comments;
    global String court;
    global String creditor;
    global String lodgedDay;
    global String lodgedMonth;
    global String lodgedYear;
    global String paidDay;
    global String paidMonth;
    global String paidYear;
    global String plaintiffName;
    global String plaintiffNumber;
    global String segId;
    global String sequence;
    global String status;
    global Summonses() {

    }
}
global class Warning {
    global String code;
    global String description;
    global String elementName;
    global String segId;
    global String sequence;
    global String value;
    global String xPath;
    global Warning() {

    }
}
}
