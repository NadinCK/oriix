/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DAndBResponsePREM extends ints.IntegrationResponseObject {
    global ints__DAndB_Detailed_Company__c DCP_Data;
    global String errorMessage;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global ints.DAndBResponsePREM.OrderProductResponse OrderProductResponse;
    global String requestBody;
    global String responseBody;
    global DAndBResponsePREM() {

    }
    global ints.DAndBResponsePREM parse(String json) {
        return null;
    }
global class ActivitiesAndOperations {
    global List<ints.DAndBResponsePREM.LineOfBusinessDetails> LineOfBusinessDetails;
    global String PrimarySICCategoryValue;
    global ActivitiesAndOperations() {

    }
}
global class AddressUsageTenureDetail {
    global ints.DAndBResponsePREM.TransferReasonText TenureTypeText;
    global AddressUsageTenureDetail() {

    }
}
global class Assessment {
    global List<ints.DAndBResponsePREM.CommercialCreditScore> CommercialCreditScore;
    global Assessment() {

    }
}
global class CommercialCreditScore {
    global ints.DAndBResponsePREM.TransferReasonText MarketingRiskClassText;
    global CommercialCreditScore() {

    }
}
global class ConsolidatedEmployeeDetails {
    global List<ints.DAndBResponsePREM.EmployeeCategoryDetails> EmployeeCategoryDetails;
    global ints.DAndBResponsePREM.TransferReasonText ReliabilityText;
    global String TotalEmployeeQuantity;
    global ConsolidatedEmployeeDetails() {

    }
}
global class CurrentManagementResponsibility {
    global ints.DAndBResponsePREM.ManagementResponsibilityText ManagementResponsibilityText;
    global CurrentManagementResponsibility() {

    }
}
global class CurrentPrincipal {
    global List<ints.DAndBResponsePREM.CurrentManagementResponsibility> CurrentManagementResponsibility;
    global List<ints.DAndBResponsePREM.JobTitle> JobTitle;
    global List<ints.DAndBResponsePREM.PrincipalIdentificationNumberDetail> PrincipalIdentificationNumberDetail;
    global ints.DAndBResponsePREM.PrincipalName PrincipalName;
    global CurrentPrincipal() {

    }
}
global class EmployeeCategoryDetails {
    global ints.DAndBResponsePREM.TransferReasonText EmployeeBasisText;
    global EmployeeCategoryDetails() {

    }
}
global class EmployeeFigures {
    global ints.DAndBResponsePREM.ConsolidatedEmployeeDetails ConsolidatedEmployeeDetails;
    global ints.DAndBResponsePREM.IndividualEntityEmployeeDetails IndividualEntityEmployeeDetails;
    global EmployeeFigures() {

    }
}
global class FamilyTreeMemberRole {
    global ints.DAndBResponsePREM.TransferReasonText FamilyTreeMemberRoleText;
    global FamilyTreeMemberRole() {

    }
}
global class Financial {
    global List<ints.DAndBResponsePREM.KeyFinancialFiguresOverview> KeyFinancialFiguresOverview;
    global Financial() {

    }
}
global class GlobalUltimateOrganization {
    global String DUNSNumber;
    global List<ints.DAndBResponsePREM.OrganizationPrimaryName> OrganizationPrimaryName;
    global List<ints.DAndBResponsePREM.PrimaryAddress_Y> PrimaryAddress;
    global GlobalUltimateOrganization() {

    }
}
global class IndividualEntityEmployeeDetails {
    global ints.DAndBResponsePREM.TransferReasonText ReliabilityText;
    global String TotalEmployeeQuantity;
    global IndividualEntityEmployeeDetails() {

    }
}
global class IndustryCode {
    global String DisplaySequence;
    global String DNBCodeValue;
    global ints.DAndBResponsePREM.LastUpdateDate IndustryCode;
    global List<ints.DAndBResponsePREM.IndustryCodeDescription> IndustryCodeDescription;
    global String SalesPercentage;
    global String TypeText;
    global IndustryCode() {

    }
}
global class IndustryCodeDescription {
    global String IndustryCodeDescriptionLengthCode;
    global String LanguageCode;
    global String Value;
    global IndustryCodeDescription() {

    }
}
global class IndustryCode_Z {
    global List<ints.DAndBResponsePREM.IndustryCode> IndustryCode;
    global IndustryCode_Z() {

    }
}
global class InquiryDetail {
    global String CountryISOAlpha2Code;
    global String DUNSNumber;
    global InquiryDetail() {

    }
}
global class JobTitle {
    global ints.DAndBResponsePREM.LastUpdateDate JobTitleText;
    global JobTitle() {

    }
}
global class KeyFinancialFiguresOverview {
    global List<ints.DAndBResponsePREM.SalesRevenueAmount> SalesRevenueAmount;
    global ints.DAndBResponsePREM.StatementHeaderDetails StatementHeaderDetails;
    global KeyFinancialFiguresOverview() {

    }
}
global class LastUpdateDate {
    global String Value;
    global LastUpdateDate() {

    }
}
global class LegalFormDetails {
    global ints.DAndBResponsePREM.TransferReasonText LegalFormText;
    global ints.DAndBResponsePREM.RegistrationLocation RegistrationLocation;
    global LegalFormDetails() {

    }
}
global class LineOfBusinessDetails {
    global ints.DAndBResponsePREM.LastUpdateDate LineOfBusinessDescription;
    global LineOfBusinessDetails() {

    }
}
global class Linkage {
    global ints.DAndBResponsePREM.GlobalUltimateOrganization DomesticUltimateOrganization;
    global ints.DAndBResponsePREM.GlobalUltimateOrganization GlobalUltimateOrganization;
    global ints.DAndBResponsePREM.LinkageSummary LinkageSummary;
    global Linkage() {

    }
}
global class LinkageSummary {
    global String GlobalUltimateFamilyTreeLinkageCount;
    global LinkageSummary() {

    }
}
global class Location {
    global List<ints.DAndBResponsePREM.MailingAddress> MailingAddress;
    global List<ints.DAndBResponsePREM.PrimaryAddress> PrimaryAddress;
    global Location() {

    }
}
global class MailingAddress {
    global String CountryISOAlpha2Code;
    global Boolean UndeliverableIndicator;
    global MailingAddress() {

    }
}
global class ManagementResponsibilityText {
    global String ManagementResponsibilityCode;
    global String Value;
    global ManagementResponsibilityText() {

    }
}
global class NamePrefix {
    global String NamePrefixText;
    global NamePrefix() {

    }
}
global class OrderProductResponse {
    global ints.DAndBResponsePREM.OrderProductResponseDetail OrderProductResponseDetail;
    global String ServiceVersionNumber;
    global ints.DAndBResponsePREM.TransactionDetail TransactionDetail;
    global ints.DAndBResponsePREM.TransactionResult TransactionResult;
    global OrderProductResponse() {

    }
}
global class OrderProductResponseDetail {
    global ints.DAndBResponsePREM.InquiryDetail InquiryDetail;
    global ints.DAndBResponsePREM.Product Product;
    global OrderProductResponseDetail() {

    }
}
global class Organization {
    global ints.DAndBResponsePREM.ActivitiesAndOperations ActivitiesAndOperations;
    global ints.DAndBResponsePREM.Assessment Assessment;
    global ints.DAndBResponsePREM.EmployeeFigures EmployeeFigures;
    global ints.DAndBResponsePREM.Financial Financial;
    global ints.DAndBResponsePREM.IndustryCode_Z IndustryCode;
    global ints.DAndBResponsePREM.Linkage Linkage;
    global ints.DAndBResponsePREM.Location Location;
    global ints.DAndBResponsePREM.OrganizationDetail OrganizationDetail;
    global ints.DAndBResponsePREM.OrganizationName OrganizationName;
    global ints.DAndBResponsePREM.PrincipalsAndManagement PrincipalsAndManagement;
    global ints.DAndBResponsePREM.RegisteredDetail RegisteredDetail;
    global ints.DAndBResponsePREM.SocioEconomicIdentification SocioEconomicIdentification;
    global ints.DAndBResponsePREM.SubjectHeader SubjectHeader;
    global ints.DAndBResponsePREM.Telecommunication Telecommunication;
    global Organization() {

    }
}
global class OrganizationDetail {
    global Boolean BoneyardOrganizationIndicator;
    global ints.DAndBResponsePREM.LastUpdateDate ControlOwnershipDate;
    global ints.DAndBResponsePREM.TransferReasonText ControlOwnershipTypeText;
    global List<ints.DAndBResponsePREM.FamilyTreeMemberRole> FamilyTreeMemberRole;
    global ints.DAndBResponsePREM.TransferReasonText OperatingStatusText;
    global String OrganizationStartYear;
    global Boolean StandaloneOrganizationIndicator;
    global OrganizationDetail() {

    }
}
global class OrganizationIdentificationNumberDetail {
    global String DNBCodeValue;
    global String OrganizationIdentificationNumber;
    global String TypeText;
    global OrganizationIdentificationNumberDetail() {

    }
}
global class OrganizationName {
    global List<ints.DAndBResponsePREM.OrganizationPrimaryName> OrganizationPrimaryName;
    global OrganizationName() {

    }
}
global class OrganizationPrimaryName {
    global ints.DAndBResponsePREM.LastUpdateDate OrganizationName;
    global OrganizationPrimaryName() {

    }
}
global class OwnershipEthnicity {
    global ints.DAndBResponsePREM.TransferReasonText EthnicityTypeText;
    global OwnershipEthnicity() {

    }
}
global class PremisesUsageDetail {
    global List<ints.DAndBResponsePREM.PremisesUsageFunctionDetail> PremisesUsageFunctionDetail;
    global PremisesUsageDetail() {

    }
}
global class PremisesUsageFunctionDetail {
    global ints.DAndBResponsePREM.TransferReasonText PremisesFunctionText;
    global PremisesUsageFunctionDetail() {

    }
}
global class PrimaryAddress {
    global List<ints.DAndBResponsePREM.AddressUsageTenureDetail> AddressUsageTenureDetail;
    global String CountryGroupName;
    global String CountryISOAlpha2Code;
    global String CountyOfficialName;
    global ints.DAndBResponsePREM.TransferReasonText GeographicalPrecisionText;
    global List<String> MetropolitanStatisticalAreaUSCensusCode;
    global String PostalCode;
    global List<ints.DAndBResponsePREM.PremisesUsageDetail> PremisesUsageDetail;
    global String PrimaryTownName;
    global Boolean RegisteredAddressIndicator;
    global Boolean ResidentialAddressIndicator;
    global List<ints.DAndBResponsePREM.StreetAddressLine> StreetAddressLine;
    global String TerritoryAbbreviatedName;
    global String TerritoryOfficialName;
    global Boolean UndeliverableIndicator;
    global PrimaryAddress() {

    }
}
global class PrimaryAddress_Y {
    global String CountryISOAlpha2Code;
    global String PostalCode;
    global String PrimaryTownName;
    global List<ints.DAndBResponsePREM.StreetAddressLine> StreetAddressLine;
    global String TerritoryAbbreviatedName;
    global String TerritoryOfficialName;
    global PrimaryAddress_Y() {

    }
}
global class PrimaryAddress_Z {
    global String TerritoryOfficialName;
    global PrimaryAddress_Z() {

    }
}
global class PrincipalIdentificationNumberDetail {
    global String DNBCodeValue;
    global String PrincipalIdentificationNumber;
    global String TypeText;
    global PrincipalIdentificationNumberDetail() {

    }
}
global class PrincipalName {
    global String FirstName;
    global String FullName;
    global String LastName;
    global String MiddleName;
    global ints.DAndBResponsePREM.NamePrefix NamePrefix;
    global String typeRecord;
    global PrincipalName() {

    }
}
global class PrincipalName_Z {
    global String FirstName;
    global String FullName;
    global String LastName;
    global String typeRecord;
    global PrincipalName_Z() {

    }
}
global class PrincipalsAndManagement {
    global List<ints.DAndBResponsePREM.CurrentPrincipal> CurrentPrincipal;
    global PrincipalsAndManagement() {

    }
}
global class Product {
    global String DNBProductID;
    global ints.DAndBResponsePREM.Organization Organization;
    global Product() {

    }
}
global class RegisteredDetail {
    global String IncorporationYear;
    global ints.DAndBResponsePREM.LegalFormDetails LegalFormDetails;
    global List<ints.DAndBResponsePREM.OrganizationIdentificationNumberDetail> OrganizationIdentificationNumberDetail;
    global RegisteredDetail() {

    }
}
global class RegistrationLocation {
    global List<ints.DAndBResponsePREM.PrimaryAddress_Z> PrimaryAddress;
    global RegistrationLocation() {

    }
}
global class SalesRevenueAmount {
    global String CurrencyISOAlpha3Code;
    global String ReliabilityText;
    global String UnitOfSize;
    global String Value;
    global SalesRevenueAmount() {

    }
}
global class SocioEconomicIdentification {
    global Boolean FemaleOwnedIndicator;
    global Boolean LaborSurplusAreaIndicator;
    global Boolean MinorityOwnedIndicator;
    global List<ints.DAndBResponsePREM.OwnershipEthnicity> OwnershipEthnicity;
    global Boolean SmallBusinessIndicator;
    global SocioEconomicIdentification() {

    }
}
global class StatementHeaderDetails {
    global String FinancialPeriodDuration;
    global ints.DAndBResponsePREM.LastUpdateDate FinancialStatementToDate;
    global StatementHeaderDetails() {

    }
}
global class StreetAddressLine {
    global String LineText;
    global StreetAddressLine() {

    }
}
global class SubjectHeader {
    global String DUNSNumber;
    global Boolean DUNSSelfRequestIndicator;
    global ints.DAndBResponsePREM.LastUpdateDate LastUpdateDate;
    global Boolean MarketabilityIndicator;
    global List<ints.DAndBResponsePREM.TransferReasonText> NonMarketableReasonText;
    global String OrganizationSummaryText;
    global String TotalInquiriesCount;
    global List<ints.DAndBResponsePREM.TransferDUNSNumberRegistration> TransferDUNSNumberRegistration;
    global SubjectHeader() {

    }
}
global class Telecommunication {
    global List<ints.DAndBResponsePREM.TelephoneNumber> TelephoneNumber;
    global Telecommunication() {

    }
}
global class TelephoneNumber {
    global String InternationalDialingCode;
    global String TelecommunicationNumber;
    global Boolean UnreachableIndicator;
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
global class TransferDUNSNumberRegistration {
    global ints.DAndBResponsePREM.LastUpdateDate TransferDate;
    global List<ints.DAndBResponsePREM.TransferReasonText> TransferReasonText;
    global String TransferredFromDUNSNumber;
    global String TransferredToDUNSNumber;
    global TransferDUNSNumberRegistration() {

    }
}
global class TransferReasonText {
    global String DNBCodeValue;
    global String Value;
    global TransferReasonText() {

    }
}
}
