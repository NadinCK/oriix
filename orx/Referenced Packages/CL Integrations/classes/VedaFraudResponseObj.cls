/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class VedaFraudResponseObj extends ints.IntegrationResponseObject {
    global ints.VedaFraudResponseObj.AmlSummary amlSummaryObj;
    global String bCAmessageType;
    global ints.VedaFraudResponseObj.BureauReport bureauReportObj;
    global String clientReference;
    global String codeVersionId;
    global String dfatVerificationIndicator;
    global ints.VedaFraudResponseObj.Error errorObj;
    global String errorStatus;
    global ints.VedaFraudResponseObj.FraudCheckReport fraudCheckReportObj;
    global String generalMessage;
    global String ofacVerificationIndicator;
    global String requestXMLBody;
    global String responseVersion;
    global String responseXMLBody;
    global String serviceCode;
    global String serviceRequestId;
    global String statusCode;
    global ints.VedaFraudResponseObj.VeriCheckReport veriCheckReportobj;
    global ints.VedaFraudResponseObj.VeriCheckSuiteSummary veriCheckSuiteSummaryObj;
    global VedaFraudResponseObj() {

    }
global class Address {
    global String city;
    global String country;
    global String countryCode;
    global String postcode;
    global String property;
    global String state;
    global String streetName;
    global String streetNumber;
    global String streetType;
    global String streetTypeCode;
    global String suburb;
    global String unitNumber;
    global Address() {

    }
}
global class AddressIndicator {
    global String addressIndicatorMatch;
    global String postcodeIndicator;
    global String propertyIndicator;
    global String stateIndicator;
    global String streetNameIndicator;
    global String streetNumberIndicator;
    global String streetTypeIndicator;
    global String suburbIndicator;
    global String type;
    global String unitNumberIndicator;
    global AddressIndicator() {

    }
}
global class AmlSummary {
    global String dateofBirthPresent;
    global String historyPresent;
    global ints.VedaFraudResponseObj.MinimalRequirements minimalRequirementsObj;
    global String nameAddressPresent;
    global String safeHarbourPresent;
    global AmlSummary() {

    }
}
global class BureauReport {
    global List<ints.VedaFraudResponseObj.BureauResult> BureauResultList;
    global BureauReport() {

    }
}
global class BureauResult {
    global List<ints.VedaFraudResponseObj.AddressIndicator> addressIndicatorList;
    global String bureauFileCreateDate;
    global String bureauReportType;
    global String bureauResultType;
    global List<ints.VedaFraudResponseObj.DateofBirthIndicator> dateofBirthIndicatorList;
    global String deliveryPointIdentifierIndicator;
    global List<ints.VedaFraudResponseObj.IndividualNameIndicator> individualNameIndicatorList;
    global String scoreIndicator;
    global BureauResult() {

    }
}
global class DateofBirthIndicator {
    global String dateofBirthDayIndicator;
    global String dateofBirthIndicator;
    global String dateofBirthMonthIndicator;
    global String dateofBirthYearIndicator;
    global DateofBirthIndicator() {

    }
}
global class ElectoralRollresult {
    global List<ints.VedaFraudResponseObj.AddressIndicator> addressIndicatorList;
    global String electoralRollresultMatchSummary;
    global ints.VedaFraudResponseObj.IndividualNameIndicator individualNameIndicatorObj;
    global String type;
    global ElectoralRollresult() {

    }
}
global class Error {
    global String descriptionCode;
    global String errorCode;
    global String errorDescription;
    global String errorType;
    global String inputContainer;
    global Error() {

    }
}
global class FraudCheckReport {
    global List<ints.VedaFraudResponseObj.FraudCheckResult> fraudCheckResultList;
    global FraudCheckReport() {

    }
}
global class FraudCheckResult {
    global ints.VedaFraudResponseObj.FraudcheckResultDetails fraudcheckResultDetailsObj;
    global String fraudFileNumber;
    global ints.VedaFraudResponseObj.FraudResultSummary fraudResultSummaryObj;
    global FraudCheckResult() {

    }
}
global class FraudResultSummary {
    global String fraudCheckAddressIndicator;
    global String fraudCheckDriversLicenceIndicator;
    global String fraudcheckEmployerIndicator;
    global String fraudCheckEmployerPhoneIndicator;
    global String fraudCheckGuarantorPhoneIndicator;
    global String fraudCheckPassportIndicator;
    global String fraudCheckPhoneIndicator;
    global String fraudCheckRefereePhoneIndicator;
    global String fraudCheckSecondPhoneIndicator;
    global FraudResultSummary() {

    }
}
global class FraudcheckResultDetails {
    global List<ints.VedaFraudResponseObj.Address> addressList;
    global String comment;
    global String dateFraudOccurred;
    global String employer;
    global String employment;
    global String employmentStatus;
    global String fraudSubject;
    global String fraudSubjectRole;
    global String fraudType;
    global String isdEmployerPhoneDetails;
    global String isdGuarantorPhoneDetails;
    global String isdPhoneDetails;
    global String isdRefereePhoneDetails;
    global String isdSecondPhoneDetails;
    global String occupation;
    global String passportCountryCode;
    global String passportNumber;
    global String phoneAreaCodeEmployerPhoneDetails;
    global String phoneAreaCodeGuarantorPhoneDetails;
    global String phoneAreaCodePhoneDetails;
    global String phoneAreaCodeRefereePhoneDetails;
    global String phoneAreaCodeSecondPhoneDetails;
    global String phoneNumberEmployerPhoneDetails;
    global String phoneNumberGuarantorPhoneDetails;
    global String phoneNumberPhoneDetails;
    global String phoneNumberRefereePhoneDetails;
    global String phoneNumberSecondPhoneDetails;
    global String reportingSubscriber;
    global FraudcheckResultDetails() {

    }
}
global class IndividualNameIndicator {
    global String familyNameIndicator;
    global String familyNameIndicatorMatchInitial;
    global String firstGivenNameIndicator;
    global String firstGivenNameIndicatorMatchInitial;
    global String individualNameIndicator;
    global String otherGivenNameIndicator;
    global String otherGivenNameIndicatorMatchInitial;
    global IndividualNameIndicator() {

    }
}
global class MinimalRequirements {
    global String matchCriteriaMet;
    global String nameAddressMet;
    global String nameAndDobMet;
    global MinimalRequirements() {

    }
}
global class PhoneListingResult {
    global List<ints.VedaFraudResponseObj.AddressIndicator> addressIndicatorList;
    global String familyNameIndicator;
    global String initialsIndicator;
    global String phoneIndicator;
    global String phoneListingResultMatchSummary;
    global String phoneListingResultType;
    global PhoneListingResult() {

    }
}
global class VeriCheckReport {
    global String driversLicenceResult;
    global List<ints.VedaFraudResponseObj.ElectoralRollresult> electoralRollresultList;
    global String nameIndicator;
    global String numberIndicator;
    global List<ints.VedaFraudResponseObj.PhoneListingResult> phoneListingResultList;
    global String reportSummary;
    global String reportSummaryCode;
    global VeriCheckReport() {

    }
}
global class VeriCheckSuiteSummary {
    global String birthCertificateVerificationIndicator;
    global String dfatVerificationIndicator;
    global String fraudCheckIndicator;
    global String ftraBureauCheckIndicator;
    global String ofacVerificationIndicator;
    global String vericheckIndicator;
    global VeriCheckSuiteSummary() {

    }
}
}
