/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ContentServiceInfo1Container {
    global Boolean addItemAccountSupported;
    global Double autoLoginType;
    global Boolean autoPayCardCancelSupported;
    global ints.ContentServiceInfo1Container.AutoRegistrationPaperBillSuppressionType autoPayCardPaperBillSuppressionType;
    global Boolean autoPayCardSetupSupported;
    global ints.ContentServiceInfo1Container.AutoRegistrationPaperBillSuppressionType autoRegistrationPaperBillSuppressionType;
    global Boolean autoRegistrationSupported;
    global Double cardLeadInterval;
    global Double checkLeadInterval;
    global String contactUrl;
    global ints.ContentServiceInfo1Container.ContainerInfo containerInfo;
    global String contentServiceDisplayName;
    global Double contentServiceId;
    global Boolean custom;
    global String defaultHelpText;
    global ints.ContentServiceInfo1Container.AutoRegistrationPaperBillSuppressionType directCardPaymentPaperBillSuppressionType;
    global Boolean directCardPaymentSupported;
    global Boolean directCheckPaymentSupported;
    global List<Double> faviconImageContent;
    global List<ints.ContentServiceInfo1Container.GeographicRegionsServed> geographicRegionsServed;
    global Boolean hasPaymentHistory;
    global Boolean hasSiblingContentServices;
    global String homeUrl;
    global List<ints.ContentServiceInfo1Container.SupportedAutoPaySetupCardTypeIds> iconImageContent;
    global Boolean isAddAccountMultiFormAction;
    global Boolean isAddItemAccountMultiFormAction;
    global Boolean isAutoRegistrationMultiFormAction;
    global Boolean isBetaSite;
    global Boolean isBPAADest;
    global Boolean isBPAASource;
    global Boolean isConveninceFeeChargedForDirectCardPayment;
    global Boolean isCredentialRequired;
    global Boolean isCSCForAutoPayRequired;
    global Boolean isCSCForDirectPaymRequired;
    global Boolean isDirectTransferSupported;
    global Boolean isEBillPaymSupprtd;
    global Boolean isFrequencyRequiredForAutopay;
    global Boolean isFTEnabled;
    global Boolean isIAVFastSupported;
    global Boolean isNumberOfPaymentsRequiredForAutopay;
    global Boolean isOnlinePaymentSupported;
    global Boolean isPaymentAmountRequiredForAutopay;
    global Boolean isSiblingAutoAdditionSafe;
    global Boolean isSiteCredentialsStored;
    global String loginUrl;
    global String mfaCoverage;
    global ints.ContentServiceInfo1Container.MfaType mfaType;
    global String organizationDisplayName;
    global Double organizationId;
    global String passwordHelpUrl;
    global Boolean paymentVerificationSupported;
    global String registrationUrl;
    global Double serviceId;
    global String siteDisplayName;
    global Double siteId;
    global List<ints.ContentServiceInfo1Container.SupportedAutoPaySetupCardTypeIds> supportedAutopayFrequencyTypes;
    global List<ints.ContentServiceInfo1Container.SupportedAutoPaySetupCardTypeIds> supportedAutoPaySetupCardTypeIds;
    global List<ints.ContentServiceInfo1Container.SupportedAutoPaySetupCardTypeIds> supportedBPSRecurringFrequencies;
    global List<ints.ContentServiceInfo1Container.SupportedAutoPaySetupCardTypeIds> supportedDirectPaymentCardTypeIds;
    global Double timeToPostDirectCardPayment;
    global Double timeToUpdatePaymentHistory;
    global String timeZoneId;
    global ContentServiceInfo1Container() {

    }
    global static ints.ContentServiceInfo1Container parse(String json) {
        return null;
    }
global class AutoRegistrationPaperBillSuppressionType {
    global String paperBillSuppressionType;
    global AutoRegistrationPaperBillSuppressionType() {

    }
}
global class ContainerInfo {
    global Double assetType;
    global String containerName;
    global ContainerInfo() {

    }
}
global class GeographicRegionsServed {
    global String country;
    global GeographicRegionsServed() {

    }
}
global class MfaType {
    global Double typeId;
    global String typeName;
    global MfaType() {

    }
}
global class SupportedAutoPaySetupCardTypeIds {
    global SupportedAutoPaySetupCardTypeIds() {

    }
}
}
