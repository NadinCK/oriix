/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DAndBResponsePaydex extends ints.IntegrationResponseObject {
    global String errorMessage;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global ints.DAndBResponsePaydex.OrderProductResponse OrderProductResponse;
    global ints__DAndB_Paydex__c Paydex_Data;
    global String requestBody;
    global String responseBody;
    global DAndBResponsePaydex() {

    }
    global ints.DAndBResponsePaydex parse(String json) {
        return null;
    }
global class Assessment {
    global ints.DAndBResponsePaydex.DNBStandardRating DNBStandardRating;
    global List<ints.DAndBResponsePaydex.DNBStandardRating> DNBStandardRatingHistory;
    global ints.DAndBResponsePaydex.FamilyTreeMemberRoleText FinancialConditionText;
    global ints.DAndBResponsePaydex.FamilyTreeMemberRoleText HistoryRatingText;
    global Assessment() {

    }
}
global class BusinessTrading {
    global String DisclaimerText;
    global ints.DAndBResponsePaydex.PaydexScoreNorms PaydexScoreNorms;
    global ints.DAndBResponsePaydex.Purchaser Purchaser;
    global BusinessTrading() {

    }
}
global class CurrentPaydexScore {
    global List<ints.DAndBResponsePaydex.TwentyFourMonthsPaydex> TwentyFourMonthsPaydex;
    global CurrentPaydexScore() {

    }
}
global class DNBStandardRating {
    global String DNBStandardRating;
    global DNBStandardRating() {

    }
}
global class Events {
    global ints.DAndBResponsePaydex.FinancingEvents FinancingEvents;
    global ints.DAndBResponsePaydex.LegalEvents LegalEvents;
    global Events() {

    }
}
global class FamilyTreeMemberRole {
    global ints.DAndBResponsePaydex.FamilyTreeMemberRoleText FamilyTreeMemberRoleText;
    global FamilyTreeMemberRole() {

    }
}
global class FamilyTreeMemberRoleText {
    global String DNBCodeValue;
    global String Value;
    global FamilyTreeMemberRoleText() {

    }
}
global class FinancialStatementFilingSummary {
    global String TotalFilingCount;
    global FinancialStatementFilingSummary() {

    }
}
global class FinancingEvents {
    global ints.DAndBResponsePaydex.FinancingStatementFilingInformation FinancingStatementFilingInformation;
    global Boolean SecuredFilingsIndicator;
    global FinancingEvents() {

    }
}
global class FinancingStatementFilingInformation {
    global ints.DAndBResponsePaydex.FinancialStatementFilingSummary FinancialStatementFilingSummary;
    global FinancingStatementFilingInformation() {

    }
}
global class InquiryDetail {
    global String CountryISOAlpha2Code;
    global String DUNSNumber;
    global InquiryDetail() {

    }
}
global class JudgmentInformation {
    global ints.DAndBResponsePaydex.JudgmentSummary JudgmentSummary;
    global JudgmentInformation() {

    }
}
global class JudgmentSummary {
    global String OpenFilingsCount;
    global JudgmentSummary() {

    }
}
global class LegalEvents {
    global Boolean ClaimsIndicator;
    global Boolean JudgmentIndicator;
    global ints.DAndBResponsePaydex.JudgmentInformation JudgmentInformation;
    global ints.DAndBResponsePaydex.LienInformation LienInformation;
    global Boolean LiensIndicator;
    global LegalEvents() {

    }
}
global class LienInformation {
    global ints.DAndBResponsePaydex.LienSummary LienSummary;
    global LienInformation() {

    }
}
global class LienSummary {
    global ints.DAndBResponsePaydex.OpenFilingsAmount OpenFilingsAmount;
    global String OpenFilingsCount;
    global LienSummary() {

    }
}
global class Location {
    global ints.DAndBResponsePaydex.PrimaryAddress PrimaryAddress;
    global Location() {

    }
}
global class NetTermsPayments {
    global String ExperienceCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditTotalAmount;
    global String PromptPercentage;
    global List<ints.DAndBResponsePaydex.SummarizedSlow_Z> SummarizedSlow;
    global NetTermsPayments() {

    }
}
global class OneMonthDataCoveragePayments {
    global String AccountsCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount CurrentTotalAmount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount OwedTotalAmount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount OwedTotalMaximumAmount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount PastDueTotalMaximumAmount;
    global List<ints.DAndBResponsePaydex.PaymentPeriodSummary_X> PaymentPeriodSummary;
    global List<ints.DAndBResponsePaydex.SummarizedPastDue_Z> SummarizedPastDue;
    global String SuppliersCount;
    global OneMonthDataCoveragePayments() {

    }
}
global class OpenFilingsAmount {
    global String Value;
    global OpenFilingsAmount() {

    }
}
global class OrderProductResponse {
    global ints.DAndBResponsePaydex.OrderProductResponseDetail OrderProductResponseDetail;
    global String ServiceVersionNumber;
    global ints.DAndBResponsePaydex.TransactionDetail TransactionDetail;
    global ints.DAndBResponsePaydex.TransactionResult TransactionResult;
    global OrderProductResponse() {

    }
}
global class OrderProductResponseDetail {
    global ints.DAndBResponsePaydex.InquiryDetail InquiryDetail;
    global ints.DAndBResponsePaydex.Product Product;
    global OrderProductResponseDetail() {

    }
}
global class Organization {
    global ints.DAndBResponsePaydex.Assessment Assessment;
    global ints.DAndBResponsePaydex.BusinessTrading BusinessTrading;
    global ints.DAndBResponsePaydex.Events Events;
    global ints.DAndBResponsePaydex.Location Location;
    global ints.DAndBResponsePaydex.OrganizationDetail OrganizationDetail;
    global ints.DAndBResponsePaydex.OrganizationName_Z OrganizationName;
    global ints.DAndBResponsePaydex.SubjectHeader SubjectHeader;
    global ints.DAndBResponsePaydex.Telecommunication Telecommunication;
    global Organization() {

    }
}
global class OrganizationDetail {
    global List<ints.DAndBResponsePaydex.FamilyTreeMemberRole> FamilyTreeMemberRole;
    global ints.DAndBResponsePaydex.FamilyTreeMemberRoleText OperatingStatusText;
    global OrganizationDetail() {

    }
}
global class OrganizationName {
    global String Value;
    global OrganizationName() {

    }
}
global class OrganizationName_Z {
    global List<ints.DAndBResponsePaydex.OrganizationPrimaryName> OrganizationPrimaryName;
    global OrganizationName_Z() {

    }
}
global class OrganizationPrimaryName {
    global ints.DAndBResponsePaydex.OrganizationName OrganizationName;
    global OrganizationPrimaryName() {

    }
}
global class PaydexScoreIndustryNorms {
    global ints.DAndBResponsePaydex.OrganizationName CalculationDate;
    global String PaymentBehaviourDaysQuantity;
    global String PaymentBehaviourText;
    global PaydexScoreIndustryNorms() {

    }
}
global class PaydexScoreNorms {
    global List<ints.DAndBResponsePaydex.PaydexScoreIndustryNorms> PaydexScoreIndustryNorms;
    global PaydexScoreNorms() {

    }
}
global class PaymentPeriodSummary {
    global ints.DAndBResponsePaydex.PaymentsWithHighCredit PaymentsWithHighCredit;
    global String SummaryPeriod;
    global PaymentPeriodSummary() {

    }
}
global class PaymentPeriodSummary_X {
    global ints.DAndBResponsePaydex.PaymentsWithHighCredit_X PaymentsWithHighCredit;
    global String SummaryPeriod;
    global PaymentPeriodSummary_X() {

    }
}
global class PaymentPeriodSummary_Y {
    global ints.DAndBResponsePaydex.PaymentsWithHighCredit_Y PaymentsWithHighCredit;
    global String SummaryPeriod;
    global PaymentPeriodSummary_Y() {

    }
}
global class PaymentPeriodSummary_Z {
    global ints.DAndBResponsePaydex.NetTermsPayments NetTermsPayments;
    global List<ints.DAndBResponsePaydex.PaymentsByCreditRange> PaymentsByCreditRange;
    global ints.DAndBResponsePaydex.PaymentsWithHighCredit_Z PaymentsWithHighCredit;
    global ints.DAndBResponsePaydex.SatisfactoryPayments SatisfactoryPayments;
    global String SummaryPeriod;
    global ints.DAndBResponsePaydex.UnfavorablePayments UnfavorablePayments;
    global PaymentPeriodSummary_Z() {

    }
}
global class PaymentsByCreditRange {
    global ints.DAndBResponsePaydex.OpenFilingsAmount CreditRangeMaximumAmount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount CreditRangeMinimumAmount;
    global String ExperienceCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditTotalAmount;
    global String PromptPercentage;
    global List<ints.DAndBResponsePaydex.SummarizedSlow_Z> SummarizedSlow;
    global PaymentsByCreditRange() {

    }
}
global class PaymentsWithHighCredit {
    global ints.DAndBResponsePaydex.OpenFilingsAmount AverageHighCreditAmount;
    global String ExperienceCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditMaximumAmount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditTotalAmount;
    global String PromptPercentage;
    global PaymentsWithHighCredit() {

    }
}
global class PaymentsWithHighCredit_X {
    global ints.DAndBResponsePaydex.OpenFilingsAmount AverageHighCreditAmount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditMaximumAmount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditTotalAmount;
    global PaymentsWithHighCredit_X() {

    }
}
global class PaymentsWithHighCredit_Y {
    global ints.DAndBResponsePaydex.OpenFilingsAmount AverageHighCreditAmount;
    global String ExperienceCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditMaximumAmount;
    global PaymentsWithHighCredit_Y() {

    }
}
global class PaymentsWithHighCredit_Z {
    global ints.DAndBResponsePaydex.OpenFilingsAmount AverageHighCreditAmount;
    global String ExperienceCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditMaximumAmount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount PastDueTotalAmount;
    global String PastDueTotalCount;
    global String SlowExperienceCount;
    global String SlowNegativeExperienceCount;
    global List<ints.DAndBResponsePaydex.SummarizedSlow> SummarizedSlow;
    global PaymentsWithHighCredit_Z() {

    }
}
global class PrimaryAddress {
    global String CountryISOAlpha2Code;
    global String PostalCode;
    global String PrimaryTownName;
    global List<ints.DAndBResponsePaydex.StreetAddressLine> StreetAddressLine;
    global String TerritoryAbbreviatedName;
    global String TerritoryOfficialName;
    global PrimaryAddress() {

    }
}
global class Product {
    global String DNBProductID;
    global ints.DAndBResponsePaydex.Organization Organization;
    global Product() {

    }
}
global class Purchaser {
    global ints.DAndBResponsePaydex.CurrentPaydexScore CurrentPaydexScore;
    global List<ints.DAndBResponsePaydex.PurchaserDerivedData> PurchaserDerivedData;
    global Purchaser() {

    }
}
global class PurchaserDerivedData {
    global ints.DAndBResponsePaydex.OneMonthDataCoveragePayments OneMonthDataCoveragePayments;
    global ints.DAndBResponsePaydex.OrganizationName TradeDataYearMonth;
    global ints.DAndBResponsePaydex.TwelveMonthsDataCoveragePayments TwelveMonthsDataCoveragePayments;
    global ints.DAndBResponsePaydex.TwentyFourMonthsDataCoveragePayments TwentyFourMonthsDataCoveragePayments;
    global PurchaserDerivedData() {

    }
}
global class SatisfactoryPayments {
    global String ExperienceCount;
    global SatisfactoryPayments() {

    }
}
global class StreetAddressLine {
    global String LineText;
    global StreetAddressLine() {

    }
}
global class SubjectHeader {
    global String DUNSNumber;
    global SubjectHeader() {

    }
}
global class SummarizedPastDue {
    global String DaysLowQuantity;
    global SummarizedPastDue() {

    }
}
global class SummarizedPastDue_Z {
    global String DaysHighQuantity;
    global String DaysLowQuantity;
    global String ExperiencesCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount TotalAmount;
    global SummarizedPastDue_Z() {

    }
}
global class SummarizedSlow {
    global String DaysHighQuantity;
    global String DaysLowQuantity;
    global String SlowExperienceCount;
    global SummarizedSlow() {

    }
}
global class SummarizedSlow_Z {
    global String DaysHighQuantity;
    global String DaysLowQuantity;
    global String SlowPercentage;
    global SummarizedSlow_Z() {

    }
}
global class Telecommunication {
    global ints.DAndBResponsePaydex.TelephoneNumber TelephoneNumber;
    global Telecommunication() {

    }
}
global class TelephoneNumber {
    global String InternationalDialingCode;
    global String TelecommunicationNumber;
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
global class TwelveMonthsDataCoveragePayments {
    global String AccountsCount;
    global List<ints.DAndBResponsePaydex.PaymentPeriodSummary> PaymentPeriodSummary;
    global List<ints.DAndBResponsePaydex.SummarizedPastDue> SummarizedPastDue;
    global ints.DAndBResponsePaydex.OpenFilingsAmount TotalPastDueTotalAmount;
    global TwelveMonthsDataCoveragePayments() {

    }
}
global class TwelveMonthsDataCoveragePayments_Z {
    global List<ints.DAndBResponsePaydex.PaymentPeriodSummary_Y> PaymentPeriodSummary;
    global TwelveMonthsDataCoveragePayments_Z() {

    }
}
global class TwentyFourMonthsDataCoveragePayments {
    global String CurrentAccountsCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount CurrentTotalAmount;
    global List<ints.DAndBResponsePaydex.PaymentPeriodSummary_Z> PaymentPeriodSummary;
    global String SlowExperienceCount;
    global String SlowNegativeExperienceCount;
    global List<ints.DAndBResponsePaydex.SummarizedPastDue_Z> SummarizedPastDue;
    global TwentyFourMonthsDataCoveragePayments() {

    }
}
global class TwentyFourMonthsPaydex {
    global String PaydexScore;
    global String PaymentBehaviorDaysQuantity;
    global String PaymentBehaviorText;
    global String TotalPaymentExperiencesUsedCount;
    global TwentyFourMonthsPaydex() {

    }
}
global class UnfavorablePayments {
    global String ExperienceCount;
    global ints.DAndBResponsePaydex.OpenFilingsAmount HighCreditTotalAmount;
    global UnfavorablePayments() {

    }
}
}
