/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ContentServiceInfoContainer {
    global Boolean addItemAccountSupported;
    global Double autoLoginType;
    global Boolean autoPayCardCancelSupported;
    global ints.ContentServiceInfoContainer.AutoRegistrationPaperBillSuppressionType autoPayCardPaperBillSuppressionType;
    global Boolean autoPayCardSetupSupported;
    global ints.ContentServiceInfoContainer.AutoRegistrationPaperBillSuppressionType autoRegistrationPaperBillSuppressionType;
    global Boolean autoRegistrationSupported;
    global Double cardLeadInterval;
    global Double checkLeadInterval;
    global String contactUrl;
    global ints.ContentServiceInfoContainer.ContainerInfo containerInfo;
    global String contentServiceDisplayName;
    global Double contentServiceId;
    global String conveninceFeeRuleMessage;
    global Boolean custom;
    global String defaultHelpText;
    global ints.ContentServiceInfoContainer.AutoRegistrationPaperBillSuppressionType directCardPaymentPaperBillSuppressionType;
    global Boolean directCardPaymentSupported;
    global Boolean directCheckPaymentSupported;
    global List<ints.ContentServiceInfoContainer.GeographicRegionsServed> geographicRegionsServed;
    global Boolean hasPaymentHistory;
    global Boolean hasSiblingContentServices;
    global String homeUrl;
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
    global String organizationDisplayName;
    global Double organizationId;
    global Boolean paymentVerificationSupported;
    global String registrationUrl;
    global Double serviceId;
    global String siteDisplayName;
    global Double siteId;
    global List<ints.ContentServiceInfoContainer.SupportedAutoPaySetupCardTypeIds> supportedAutopayFrequencyTypes;
    global List<ints.ContentServiceInfoContainer.SupportedAutoPaySetupCardTypeIds> supportedAutoPaySetupCardTypeIds;
    global List<ints.ContentServiceInfoContainer.SupportedAutoPaySetupCardTypeIds> supportedBPSRecurringFrequencies;
    global List<ints.ContentServiceInfoContainer.SupportedAutoPaySetupCardTypeIds> supportedDirectPaymentCardTypeIds;
    global Double timeToPostDirectCardPayment;
    global Double timeToUpdatePaymentHistory;
    global String timeZoneId;
    global ContentServiceInfoContainer() {

    }
    global static ints.ContentServiceInfoContainer parse(String json) {
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
global class SupportedAutoPaySetupCardTypeIds {
    global SupportedAutoPaySetupCardTypeIds() {

    }
}
}
