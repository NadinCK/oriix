/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class MetadataService {
    global MetadataService() {

    }
global class AccessMapping {
    global String accessLevel;
    global String object_x;
    global String objectField;
    global String userField;
    global AccessMapping() {

    }
}
global class AccountCriteriaBasedSharingRule {
    global String accountAccessLevel;
    global String booleanFilter;
    global String caseAccessLevel;
    global String contactAccessLevel;
    global String description;
    global String name;
    global String opportunityAccessLevel;
    global AccountCriteriaBasedSharingRule() {

    }
}
global class AccountSettings extends ints.MetadataService.MetadataAPI {
    global Boolean enableAccountOwnerReport;
    global Boolean enableAccountTeams;
    global String fullName;
    global Boolean showViewHierarchyLink;
    global String type;
    global AccountSettings() {

    }
}
global class AccountTerritorySharingRule {
    global String accountAccessLevel;
    global String caseAccessLevel;
    global String contactAccessLevel;
    global String description;
    global String name;
    global String opportunityAccessLevel;
    global AccountTerritorySharingRule() {

    }
}
global class AccountTerritorySharingRules {
    global List<ints.MetadataService.AccountTerritorySharingRule> rules;
    global AccountTerritorySharingRules() {

    }
}
global class ActionOverride {
    global String actionName;
    global String comment;
    global String content;
    global Boolean skipRecordTypeSelect;
    global String type_x;
    global ActionOverride() {

    }
}
global class AdjustmentsSettings {
    global Boolean enableAdjustments;
    global AdjustmentsSettings() {

    }
}
global class AgentConfigUserAssignments {
    global List<String> user_x;
    global AgentConfigUserAssignments() {

    }
}
global class ApexClass extends ints.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global String content;
    global String fullName;
    global List<ints.MetadataService.PackageVersion> packageVersions;
    global String status;
    global String type;
    global ApexClass() {

    }
}
global class ApexComponent extends ints.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global String content;
    global String description;
    global String fullName;
    global String label;
    global List<ints.MetadataService.PackageVersion> packageVersions;
    global String type;
    global ApexComponent() {

    }
}
global class ApexPage extends ints.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global Boolean availableInTouch;
    global Boolean confirmationTokenRequired;
    global String content;
    global String description;
    global String fullName;
    global String label;
    global List<ints.MetadataService.PackageVersion> packageVersions;
    global String type;
    global ApexPage() {

    }
}
global class ApexTrigger extends ints.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global String content;
    global String fullName;
    global List<ints.MetadataService.PackageVersion> packageVersions;
    global String status;
    global String type;
    global ApexTrigger() {

    }
}
global class AppMenu extends ints.MetadataService.MetadataAPI {
    global List<ints.MetadataService.AppMenuItem> appMenuItems;
    global String fullName;
    global String type;
    global AppMenu() {

    }
}
global class AppMenuItem {
    global String name;
    global String type_x;
    global AppMenuItem() {

    }
}
global class ApprovalEntryCriteria {
    global String booleanFilter;
    global List<ints.MetadataService.FilterItem> criteriaItems;
    global String formula;
    global ApprovalEntryCriteria() {

    }
}
global class ApprovalStepApprover {
    global List<ints.MetadataService.Approver> approver;
    global String whenMultipleApprovers;
    global ApprovalStepApprover() {

    }
}
global class ApprovalStepRejectBehavior {
    global String type_x;
    global ApprovalStepRejectBehavior() {

    }
}
global class ApprovalSubmitter {
    global String submitter;
    global String type_x;
    global ApprovalSubmitter() {

    }
}
global class Approver {
    global String name;
    global String type_x;
    global Approver() {

    }
}
global class ArticleTypeChannelDisplay {
    global List<ints.MetadataService.ArticleTypeTemplate> articleTypeTemplates;
    global ArticleTypeChannelDisplay() {

    }
}
global class ArticleTypeTemplate {
    global String channel;
    global String page_x;
    global String template;
    global ArticleTypeTemplate() {

    }
}
global class AsyncResult {
    global Boolean done;
    global String id;
    global String message;
    global String state;
    global String statusCode;
    global AsyncResult() {

    }
}
global class Attachment {
    global String content;
    global String name;
    global Attachment() {

    }
}
global class AuthProvider extends ints.MetadataService.MetadataAPI {
    global String authorizeUrl;
    global String consumerKey;
    global String consumerSecret;
    global String defaultScopes;
    global String errorUrl;
    global String executionUser;
    global String friendlyName;
    global String fullName;
    global String idTokenIssuer;
    global String portal;
    global String providerType;
    global String registrationHandler;
    global Boolean sendAccessTokenInHeader;
    global Boolean sendClientCredentialsInHeader;
    global String tokenUrl;
    global String type;
    global String userInfoUrl;
    global AuthProvider() {

    }
}
global class BaseSharingRule extends ints.MetadataService.MetadataAPI {
    global String fullName;
    global ints.MetadataService.SharedTo sharedTo;
    global String type;
    global BaseSharingRule() {

    }
}
global class Branding {
    global String loginFooterText;
    global String loginLogo;
    global String pageFooter;
    global String pageHeader;
    global String primaryColor;
    global String primaryComplementColor;
    global String quaternaryColor;
    global String quaternaryComplementColor;
    global String secondaryColor;
    global String tertiaryColor;
    global String tertiaryComplementColor;
    global String zeronaryColor;
    global String zeronaryComplementColor;
    global Branding() {

    }
}
global class BusinessProcess extends ints.MetadataService.MetadataAPI {
    global String description;
    global String fullName;
    global Boolean isActive;
    global String type;
    global List<ints.MetadataService.PicklistValue> values;
    global BusinessProcess() {

    }
}
global class CallCenter extends ints.MetadataService.MetadataAPI {
    global String adapterUrl;
    global String customSettings;
    global String displayName;
    global String displayNameLabel;
    global String fullName;
    global String internalNameLabel;
    global List<ints.MetadataService.CallCenterSection> sections;
    global String type;
    global String version;
    global CallCenter() {

    }
}
global class CallCenterItem {
    global String label;
    global String name;
    global String value;
    global CallCenterItem() {

    }
}
global class CallCenterSection {
    global List<ints.MetadataService.CallCenterItem> items;
    global String label;
    global String name;
    global CallCenterSection() {

    }
}
global class CallOptions_element {
    global String client;
    global CallOptions_element() {

    }
}
global class CampaignCriteriaBasedSharingRule {
    global String booleanFilter;
    global String campaignAccessLevel;
    global String description;
    global String name;
    global CampaignCriteriaBasedSharingRule() {

    }
}
global class CampaignOwnerSharingRule {
    global String campaignAccessLevel;
    global String description;
    global String name;
    global CampaignOwnerSharingRule() {

    }
}
global class CampaignSharingRules {
    global List<ints.MetadataService.CampaignCriteriaBasedSharingRule> criteriaBasedRules;
    global List<ints.MetadataService.CampaignOwnerSharingRule> ownerRules;
    global CampaignSharingRules() {

    }
}
global class CancelDeployResult {
    global Boolean done;
    global String id;
    global CancelDeployResult() {

    }
}
global class CaseCriteriaBasedSharingRule {
    global String booleanFilter;
    global String caseAccessLevel;
    global String description;
    global String name;
    global CaseCriteriaBasedSharingRule() {

    }
}
global class CaseOwnerSharingRule {
    global String caseAccessLevel;
    global String description;
    global String name;
    global CaseOwnerSharingRule() {

    }
}
global class ChartSummary {
    global String aggregate;
    global String axisBinding;
    global String column;
    global ChartSummary() {

    }
}
global class ChatterAnswersReputationLevel {
    global String name;
    global Integer value;
    global ChatterAnswersReputationLevel() {

    }
}
global class ChatterAnswersSettings extends ints.MetadataService.MetadataAPI {
    global Boolean emailFollowersOnBestAnswer;
    global Boolean emailFollowersOnReply;
    global Boolean emailOwnerOnPrivateReply;
    global Boolean emailOwnerOnReply;
    global Boolean enableAnswerViaEmail;
    global Boolean enableChatterAnswers;
    global Boolean enableFacebookSSO;
    global Boolean enableInlinePublisher;
    global Boolean enableReputation;
    global Boolean enableRichTextEditor;
    global String facebookAuthProvider;
    global String fullName;
    global Boolean showInPortals;
    global String type;
    global ChatterAnswersSettings() {

    }
}
global class ChatterMobileSettings {
    global Boolean enablePushNotifications;
    global ChatterMobileSettings() {

    }
}
global class CodeLocation {
    global Integer column;
    global Integer line;
    global Integer numExecutions;
    global Double time_x;
    global CodeLocation() {

    }
}
global class CompactLayout extends ints.MetadataService.MetadataAPI {
    global List<String> fields;
    global String fullName;
    global String label;
    global String type;
    global CompactLayout() {

    }
}
global class CompanySettings extends ints.MetadataService.MetadataAPI {
    global ints.MetadataService.FiscalYearSettings fiscalYear;
    global String fullName;
    global String type;
    global CompanySettings() {

    }
}
global class ComponentInstance {
    global List<ints.MetadataService.ComponentInstanceProperty> componentInstanceProperties;
    global String componentName;
    global ComponentInstance() {

    }
}
global class ComponentInstanceProperty {
    global String name;
    global String value;
    global ComponentInstanceProperty() {

    }
}
global class ConnectedAppAttribute {
    global String formula;
    global String key;
    global ConnectedAppAttribute() {

    }
}
global class ConnectedAppCanvasConfig {
    global String accessMethod;
    global String canvasUrl;
    global List<String> locations;
    global List<String> options;
    global ConnectedAppCanvasConfig() {

    }
}
global class ConnectedAppIpRange {
    global String end_x;
    global String start;
    global ConnectedAppIpRange() {

    }
}
global class ConnectedAppMobileDetailConfig {
    global String applicationBinaryFile;
    global String applicationBinaryFileName;
    global String applicationBundleIdentifier;
    global Integer applicationFileLength;
    global String applicationIconFile;
    global String applicationIconFileName;
    global String applicationInstallUrl;
    global String devicePlatform;
    global String deviceType;
    global String minimumOsVersion;
    global Boolean privateApp;
    global String version;
    global ConnectedAppMobileDetailConfig() {

    }
}
global class ConnectedAppSamlConfig {
    global String acsUrl;
    global String certificate;
    global String encryptionCertificate;
    global String encryptionType;
    global String entityUrl;
    global String issuer;
    global String samlNameIdFormat;
    global String samlSubjectCustomAttr;
    global String samlSubjectType;
    global ConnectedAppSamlConfig() {

    }
}
global class ContactCriteriaBasedSharingRule {
    global String booleanFilter;
    global String contactAccessLevel;
    global String description;
    global String name;
    global ContactCriteriaBasedSharingRule() {

    }
}
global class ContactOwnerSharingRule {
    global String contactAccessLevel;
    global String description;
    global String name;
    global ContactOwnerSharingRule() {

    }
}
global class ContactSharingRules {
    global List<ints.MetadataService.ContactCriteriaBasedSharingRule> criteriaBasedRules;
    global List<ints.MetadataService.ContactOwnerSharingRule> ownerRules;
    global ContactSharingRules() {

    }
}
global class ContractSettings extends ints.MetadataService.MetadataAPI {
    global Boolean autoCalculateEndDate;
    global String autoExpirationDelay;
    global String autoExpirationRecipient;
    global Boolean autoExpireContracts;
    global Boolean enableContractHistoryTracking;
    global String fullName;
    global Boolean notifyOwnersOnContractExpiration;
    global String type;
    global ContractSettings() {

    }
}
global class CriteriaBasedSharingRule {
    global List<ints.MetadataService.FilterItem> criteriaItems;
    global CriteriaBasedSharingRule() {

    }
}
global class CustomApplicationComponents {
    global String alignment;
    global List<String> customApplicationComponent;
    global CustomApplicationComponents() {

    }
}
global class CustomApplicationTranslation {
    global String label;
    global String name;
    global CustomApplicationTranslation() {

    }
}
global class CustomDataType extends ints.MetadataService.MetadataAPI {
    global List<ints.MetadataService.CustomDataTypeComponent> customDataTypeComponents;
    global String description;
    global String displayFormula;
    global Boolean editComponentsOnSeparateLines;
    global String fullName;
    global String label;
    global Boolean rightAligned;
    global Boolean supportComponentsInReports;
    global String type;
    global CustomDataType() {

    }
}
global class CustomDataTypeComponent {
    global String developerSuffix;
    global Boolean enforceFieldRequiredness;
    global String label;
    global Integer length;
    global Integer precision;
    global Integer scale;
    global String sortOrder;
    global Integer sortPriority;
    global String type_x;
    global CustomDataTypeComponent() {

    }
}
global class CustomDataTypeComponentTranslation {
    global String developerSuffix;
    global String label;
    global CustomDataTypeComponentTranslation() {

    }
}
global class CustomDataTypeTranslation {
    global List<ints.MetadataService.CustomDataTypeComponentTranslation> components;
    global String customDataTypeName;
    global String description;
    global String label;
    global CustomDataTypeTranslation() {

    }
}
global class CustomField extends ints.MetadataService.Metadata {
    global Boolean caseSensitive;
    global String customDataType;
    global String defaultValue;
    global String deleteConstraint;
    global Boolean deprecated;
    global String description;
    global String displayFormat;
    global Boolean escapeMarkup;
    global String externalDeveloperName;
    global Boolean externalId;
    global String formula;
    global String formulaTreatBlanksAs;
    global String fullName;
    global String inlineHelpText;
    global Boolean isFilteringDisabled;
    global Boolean isNameField;
    global Boolean isSortingDisabled;
    global String label;
    global Integer length;
    global ints.MetadataService.LookupFilter lookupFilter;
    global String maskChar;
    global String maskType;
    global ints.MetadataService.Picklist picklist;
    global Boolean populateExistingRows;
    global Integer precision;
    global String referenceTo;
    global String relationshipLabel;
    global String relationshipName;
    global Integer relationshipOrder;
    global Boolean reparentableMasterDetail;
    global Boolean required;
    global Boolean restrictedAdminField;
    global Integer scale;
    global Integer startingNumber;
    global Boolean stripMarkup;
    global String summarizedField;
    global List<ints.MetadataService.FilterItem> summaryFilterItems;
    global String summaryForeignKey;
    global String summaryOperation;
    global Boolean trackFeedHistory;
    global Boolean trackHistory;
    global Boolean trackTrending;
    global String type;
    global String type_x;
    global Boolean unique;
    global Integer visibleLines;
    global Boolean writeRequiresMasterRead;
    global CustomField() {

    }
}
global class CustomFieldTranslation {
    global List<ints.MetadataService.ObjectNameCaseValue> caseValues;
    global String gender;
    global String help;
    global String label;
    global ints.MetadataService.LookupFilterTranslation lookupFilter;
    global String name;
    global List<ints.MetadataService.PicklistValueTranslation> picklistValues;
    global String relationshipLabel;
    global String startsWith;
    global CustomFieldTranslation() {

    }
}
global class CustomLabel extends ints.MetadataService.MetadataAPI {
    global String categories;
    global String fullName;
    global String language;
    global Boolean protected_x;
    global String shortDescription;
    global String type;
    global String value;
    global CustomLabel() {

    }
}
global class CustomLabelTranslation {
    global String label;
    global String name;
    global CustomLabelTranslation() {

    }
}
global class CustomLabels extends ints.MetadataService.MetadataAPI {
    global String fullName;
    global List<ints.MetadataService.CustomLabel> labels;
    global String type;
    global CustomLabels() {

    }
}
global class CustomObject extends ints.MetadataService.MetadataAPI {
    global List<ints.MetadataService.ActionOverride> actionOverrides;
    global ints.MetadataService.ArticleTypeChannelDisplay articleTypeChannelDisplay;
    global List<ints.MetadataService.BusinessProcess> businessProcesses;
    global String compactLayoutAssignment;
    global List<ints.MetadataService.CompactLayout> compactLayouts;
    global String customHelp;
    global String customHelpPage;
    global String customSettingsType;
    global String customSettingsVisibility;
    global String deploymentStatus;
    global Boolean deprecated;
    global String description;
    global Boolean enableActivities;
    global Boolean enableDivisions;
    global Boolean enableEnhancedLookup;
    global Boolean enableFeeds;
    global Boolean enableHistory;
    global Boolean enableReports;
    global List<ints.MetadataService.Field> fields;
    global List<ints.MetadataService.FieldSet> fieldSets;
    global String fullName;
    global String gender;
    global Boolean household;
    global String label;
    global List<ints.MetadataService.ListView> listViews;
    global ints.MetadataService.Field nameField;
    global String pluralLabel;
    global List<ints.MetadataService.RecordType> recordTypes;
    global Boolean recordTypeTrackFeedHistory;
    global Boolean recordTypeTrackHistory;
    global ints.MetadataService.SearchLayouts searchLayouts;
    global String sharingModel;
    global List<ints.MetadataService.SharingReason> sharingReasons;
    global List<ints.MetadataService.SharingRecalculation> sharingRecalculations;
    global String startsWith;
    global String type;
    global List<ints.MetadataService.ValidationRule> validationRules;
    global List<ints.MetadataService.WebLink> webLinks;
    global CustomObject() {

    }
}
global class CustomObjectCriteriaBasedSharingRule {
    global String accessLevel;
    global String booleanFilter;
    global String description;
    global String name;
    global CustomObjectCriteriaBasedSharingRule() {

    }
}
global class CustomObjectOwnerSharingRule {
    global String accessLevel;
    global String description;
    global String name;
    global CustomObjectOwnerSharingRule() {

    }
}
global class CustomObjectSharingRules {
    global List<ints.MetadataService.CustomObjectCriteriaBasedSharingRule> criteriaBasedRules;
    global List<ints.MetadataService.CustomObjectOwnerSharingRule> ownerRules;
    global CustomObjectSharingRules() {

    }
}
global class CustomPageWebLinkTranslation {
    global String label;
    global String name;
    global CustomPageWebLinkTranslation() {

    }
}
global class CustomShortcut {
    global String description;
    global String eventName;
    global CustomShortcut() {

    }
}
global class CustomTab extends ints.MetadataService.MetadataAPI {
    global Boolean customObject;
    global String description;
    global String flexiPage;
    global Integer frameHeight;
    global String fullName;
    global Boolean hasSidebar;
    global String icon;
    global String label;
    global Boolean mobileReady;
    global String motif;
    global String page_x;
    global String scontrol;
    global String splashPageLink;
    global String type;
    global String url;
    global String urlEncodingKey;
    global CustomTab() {

    }
}
global class CustomTabTranslation {
    global String label;
    global String name;
    global CustomTabTranslation() {

    }
}
global class DashboardFilter {
    global List<ints.MetadataService.DashboardFilterOption> dashboardFilterOptions;
    global String name;
    global DashboardFilter() {

    }
}
global class DashboardFilterColumn {
    global String column;
    global DashboardFilterColumn() {

    }
}
global class DashboardFilterOption {
    global String operator;
    global List<String> values;
    global DashboardFilterOption() {

    }
}
global class DashboardFolder {
    global DashboardFolder() {

    }
}
global class DashboardMobileSettings {
    global Boolean enableDashboardIPadApp;
    global DashboardMobileSettings() {

    }
}
global class DataCategory {
    global List<ints.MetadataService.DataCategory> dataCategory;
    global String label;
    global String name;
    global DataCategory() {

    }
}
global class DataCategoryGroup extends ints.MetadataService.MetadataAPI {
    global Boolean active;
    global ints.MetadataService.DataCategory dataCategory;
    global String description;
    global String fullName;
    global String label;
    global ints.MetadataService.ObjectUsage objectUsage;
    global String type;
    global DataCategoryGroup() {

    }
}
global class DebuggingHeader_element {
    global List<ints.MetadataService.LogInfo> categories;
    global String debugLevel;
    global DebuggingHeader_element() {

    }
}
global class DebuggingInfo_element {
    global String debugLog;
    global DebuggingInfo_element() {

    }
}
global class DefaultShortcut {
    global String action;
    global Boolean active;
    global String keyCommand;
    global DefaultShortcut() {

    }
}
global class DeleteResult {
    global List<ints.MetadataService.Error> errors;
    global String fullName;
    global Boolean success;
    global DeleteResult() {

    }
}
global class DescribeMetadataObject {
    global List<String> childXmlNames;
    global String directoryName;
    global Boolean inFolder;
    global Boolean metaFile;
    global String suffix;
    global String xmlName;
    global DescribeMetadataObject() {

    }
}
global class DescribeMetadataResult {
    global List<ints.MetadataService.DescribeMetadataObject> metadataObjects;
    global String organizationNamespace;
    global Boolean partialSaveAllowed;
    global Boolean testRequired;
    global DescribeMetadataResult() {

    }
}
global class Document extends ints.MetadataService.MetadataWithContent {
    global String content;
    global String description;
    global String fullName;
    global Boolean global_x;
    global Boolean internalUseOnly;
    global String keywords;
    global String name;
    global String type;
    global Document() {

    }
}
global class DocumentFolder {
    global DocumentFolder() {

    }
}
global class DomainWhitelist {
    global List<String> domain;
    global DomainWhitelist() {

    }
}
global class EmailFolder {
    global EmailFolder() {

    }
}
global class EntitlementSettings extends ints.MetadataService.MetadataAPI {
    global Boolean assetLookupLimitedToActiveEntitlementsOnAccount;
    global Boolean assetLookupLimitedToActiveEntitlementsOnContact;
    global Boolean assetLookupLimitedToSameAccount;
    global Boolean assetLookupLimitedToSameContact;
    global Boolean enableEntitlements;
    global Boolean enableEntitlementVersioning;
    global Boolean entitlementLookupLimitedToActiveStatus;
    global Boolean entitlementLookupLimitedToSameAccount;
    global Boolean entitlementLookupLimitedToSameAsset;
    global Boolean entitlementLookupLimitedToSameContact;
    global String fullName;
    global String type;
    global EntitlementSettings() {

    }
}
global class EntitlementTemplate extends ints.MetadataService.MetadataAPI {
    global String businessHours;
    global Integer casesPerEntitlement;
    global String entitlementProcess;
    global String fullName;
    global Boolean isPerIncident;
    global Integer term;
    global String type;
    global String type_x;
    global EntitlementTemplate() {

    }
}
global class Error {
    global List<String> fields;
    global String message;
    global String statusCode;
    global Error() {

    }
}
global class EscalationAction {
    global String assignedTo;
    global String assignedToTemplate;
    global String assignedToType;
    global Integer minutesToEscalation;
    global Boolean notifyCaseOwner;
    global List<String> notifyEmail;
    global String notifyTo;
    global String notifyToTemplate;
    global EscalationAction() {

    }
}
global class FeedLayout {
    global String feedFilterPosition;
    global List<ints.MetadataService.FeedLayoutFilter> feedFilters;
    global Boolean hideSidebar;
    global List<ints.MetadataService.FeedLayoutComponent> leftComponents;
    global List<ints.MetadataService.FeedLayoutComponent> rightComponents;
    global FeedLayout() {

    }
}
global class FeedLayoutComponent {
    global String componentType;
    global Integer height;
    global String page_x;
    global FeedLayoutComponent() {

    }
}
global class FeedLayoutFilter {
    global String feedFilterType;
    global String feedItemType;
    global FeedLayoutFilter() {

    }
}
global class Field extends ints.MetadataService.MetadataAPI {
    global Boolean caseSensitive;
    global String customDataType;
    global String defaultValue;
    global String deleteConstraint;
    global Boolean deprecated;
    global String description;
    global String displayFormat;
    global Boolean escapeMarkup;
    global String externalDeveloperName;
    global Boolean externalId;
    global String formula;
    global String formulaTreatBlanksAs;
    global String fullName;
    global String inlineHelpText;
    global Boolean isFilteringDisabled;
    global Boolean isNameField;
    global Boolean isSortingDisabled;
    global String label;
    global Integer length;
    global ints.MetadataService.LookupFilter lookupFilter;
    global String maskChar;
    global String maskType;
    global ints.MetadataService.Picklist picklist;
    global Boolean populateExistingRows;
    global Integer precision;
    global String referenceTo;
    global String relationshipLabel;
    global String relationshipName;
    global Integer relationshipOrder;
    global Boolean reparentableMasterDetail;
    global Boolean required;
    global Boolean restrictedAdminField;
    global Integer scale;
    global Integer startingNumber;
    global Boolean stripMarkup;
    global String summarizedField;
    global List<ints.MetadataService.FilterItem> summaryFilterItems;
    global String summaryForeignKey;
    global String summaryOperation;
    global Boolean trackFeedHistory;
    global Boolean trackHistory;
    global Boolean trackTrending;
    global String type;
    global String type_x;
    global Boolean unique;
    global Integer visibleLines;
    global Boolean writeRequiresMasterRead;
    global Field() {

    }
}
global class FieldOverride {
    global String field;
    global String formula;
    global String literalValue;
    global FieldOverride() {

    }
}
global class FieldSet extends ints.MetadataService.MetadataAPI {
    global List<ints.MetadataService.FieldSetItem> availableFields;
    global String description;
    global List<ints.MetadataService.FieldSetItem> displayedFields;
    global String fullName;
    global String label;
    global String type;
    global FieldSet() {

    }
}
global class FieldSetItem {
    global String field;
    global Boolean isFieldManaged;
    global Boolean isRequired;
    global FieldSetItem() {

    }
}
global class FileProperties {
    global String createdById;
    global String createdByName;
    global Datetime createdDate;
    global String fileName;
    global String fullName;
    global String id;
    global String lastModifiedById;
    global String lastModifiedByName;
    global Datetime lastModifiedDate;
    global String manageableState;
    global String namespacePrefix;
    global String type_x;
    global FileProperties() {

    }
}
global class FilterItem {
    global String field;
    global String operation;
    global String value;
    global String valueField;
    global FilterItem() {

    }
}
global class FindSimilarOppFilter {
    global List<String> similarOpportunitiesDisplayColumns;
    global List<String> similarOpportunitiesMatchFields;
    global FindSimilarOppFilter() {

    }
}
global class FiscalYearSettings {
    global String fiscalYearNameBasedOn;
    global String startMonth;
    global FiscalYearSettings() {

    }
}
global class FlexiPage extends ints.MetadataService.MetadataAPI {
    global List<ints.MetadataService.FlexiPageRegion> flexiPageRegions;
    global String fullName;
    global String masterLabel;
    global ints.MetadataService.QuickActionList quickActionList;
    global String type;
    global FlexiPage() {

    }
}
global class FlexiPageRegion {
    global List<ints.MetadataService.ComponentInstance> componentInstances;
    global String name;
    global FlexiPageRegion() {

    }
}
global class FlowApexPluginCallOutputParameter {
    global String assignToReference;
    global String name;
    global FlowApexPluginCallOutputParameter() {

    }
}
global class FlowAssignment {
    global List<ints.MetadataService.FlowAssignmentItem> assignmentItems;
    global ints.MetadataService.FlowConnector connector;
    global FlowAssignment() {

    }
}
global class FlowAssignmentItem {
    global String assignToReference;
    global String operator;
    global ints.MetadataService.FlowElementReferenceOrValue value;
    global FlowAssignmentItem() {

    }
}
global class FlowCondition {
    global String leftValueReference;
    global String operator;
    global ints.MetadataService.FlowElementReferenceOrValue rightValue;
    global FlowCondition() {

    }
}
global class FlowConnector {
    global String targetReference;
    global FlowConnector() {

    }
}
global class FlowConstant {
    global String dataType;
    global ints.MetadataService.FlowElementReferenceOrValue value;
    global FlowConstant() {

    }
}
global class FlowDynamicChoiceSet {
    global String dataType;
    global String displayField;
    global List<ints.MetadataService.FlowRecordFilter> filters;
    global Integer limit_x;
    global String object_x;
    global List<ints.MetadataService.FlowOutputFieldAssignment> outputAssignments;
    global String sortField;
    global String sortOrder;
    global String valueField;
    global FlowDynamicChoiceSet() {

    }
}
global class FlowElementReferenceOrValue {
    global Boolean booleanValue;
    global Datetime dateTimeValue;
    global Date dateValue;
    global String elementReference;
    global Double numberValue;
    global String stringValue;
    global FlowElementReferenceOrValue() {

    }
}
global class FlowFormula {
    global String expression;
    global Integer scale;
    global FlowFormula() {

    }
}
global class FlowNode {
    global String label;
    global Integer locationX;
    global Integer locationY;
    global FlowNode() {

    }
}
global class FlowOutputFieldAssignment {
    global String assignToReference;
    global String field;
    global FlowOutputFieldAssignment() {

    }
}
global class FlowRecordDelete {
    global ints.MetadataService.FlowConnector connector;
    global ints.MetadataService.FlowConnector faultConnector;
    global List<ints.MetadataService.FlowRecordFilter> filters;
    global String inputReference;
    global String object_x;
    global FlowRecordDelete() {

    }
}
global class FlowRecordFilter {
    global String field;
    global String operator;
    global ints.MetadataService.FlowElementReferenceOrValue value;
    global FlowRecordFilter() {

    }
}
global class FlowStep {
    global List<ints.MetadataService.FlowConnector> connectors;
    global FlowStep() {

    }
}
global class FlowSubflowOutputAssignment {
    global String assignToReference;
    global String name;
    global FlowSubflowOutputAssignment() {

    }
}
global class FlowTextTemplate {
    global String text;
    global FlowTextTemplate() {

    }
}
global class FlowVariable {
    global String dataType;
    global Boolean isCollection;
    global Boolean isInput;
    global Boolean isOutput;
    global String objectType;
    global Integer scale;
    global ints.MetadataService.FlowElementReferenceOrValue value;
    global FlowVariable() {

    }
}
global class Folder extends ints.MetadataService.MetadataAPI {
    global String accessType;
    global List<ints.MetadataService.FolderShare> folderShares;
    global String fullName;
    global String globalFolderAccess;
    global String name;
    global ints.MetadataService.SharedTo sharedTo;
    global String type;
    global Folder() {

    }
}
global class FolderShare {
    global String accessLevel;
    global String sharedTo;
    global String sharedToType;
    global FolderShare() {

    }
}
global class ForecastRangeSettings {
    global Integer beginning;
    global Integer displaying;
    global String periodType;
    global ForecastRangeSettings() {

    }
}
global class GlobalQuickActionTranslation {
    global String label;
    global String name;
    global GlobalQuickActionTranslation() {

    }
}
global class Group_x extends ints.MetadataService.MetadataAPI {
    global Boolean doesIncludeBosses;
    global String fullName;
    global String name;
    global String type;
    global Group_x() {

    }
}
global class HomePageComponent extends ints.MetadataService.MetadataAPI {
    global String body;
    global String fullName;
    global List<String> links;
    global String pageComponentType;
    global String type;
    global String width;
    global HomePageComponent() {

    }
}
global class HomePageLayout extends ints.MetadataService.MetadataAPI {
    global String fullName;
    global List<String> narrowComponents;
    global String type;
    global List<String> wideComponents;
    global HomePageLayout() {

    }
}
global interface IReadResponseElement {
    ints.MetadataService.IReadResult getResult();
}
global interface IReadResult {
    List<ints.MetadataService.MetadataAPI> getRecords();
}
global class IdeaReputationLevel {
    global String name;
    global Integer value;
    global IdeaReputationLevel() {

    }
}
global class InstalledPackage extends ints.MetadataService.MetadataAPI {
    global String fullName;
    global String password;
    global String type;
    global String versionNumber;
    global InstalledPackage() {

    }
}
global class IpRange {
    global String end_x;
    global String start;
    global IpRange() {

    }
}
global class KeyboardShortcuts {
    global List<ints.MetadataService.CustomShortcut> customShortcut;
    global List<ints.MetadataService.DefaultShortcut> defaultShortcut;
    global KeyboardShortcuts() {

    }
}
global class KnowledgeLanguage {
    global Boolean active;
    global String defaultAssignee;
    global String defaultAssigneeType;
    global String defaultReviewer;
    global String defaultReviewerType;
    global String name;
    global KnowledgeLanguage() {

    }
}
global class KnowledgeLanguageSettings {
    global List<ints.MetadataService.KnowledgeLanguage> language;
    global KnowledgeLanguageSettings() {

    }
}
global class LayoutColumn {
    global List<ints.MetadataService.LayoutItem> layoutItems;
    global String reserved;
    global LayoutColumn() {

    }
}
global class LayoutItem {
    global String behavior;
    global String component;
    global String customLink;
    global Boolean emptySpace;
    global String field;
    global Integer height;
    global String page_x;
    global ints.MetadataService.ReportChartComponentLayoutItem reportChartComponent;
    global String scontrol;
    global Boolean showLabel;
    global Boolean showScrollbars;
    global String width;
    global LayoutItem() {

    }
}
global class LayoutSection {
    global Boolean customLabel;
    global Boolean detailHeading;
    global Boolean editHeading;
    global String label;
    global List<ints.MetadataService.LayoutColumn> layoutColumns;
    global String style;
    global LayoutSection() {

    }
}
global class LayoutSectionTranslation {
    global String label;
    global String section;
    global LayoutSectionTranslation() {

    }
}
global class LayoutTranslation {
    global String layout;
    global String layoutType;
    global List<ints.MetadataService.LayoutSectionTranslation> sections;
    global LayoutTranslation() {

    }
}
global class LeadCriteriaBasedSharingRule {
    global String booleanFilter;
    global String description;
    global String leadAccessLevel;
    global String name;
    global LeadCriteriaBasedSharingRule() {

    }
}
global class LeadOwnerSharingRule {
    global String description;
    global String leadAccessLevel;
    global String name;
    global LeadOwnerSharingRule() {

    }
}
global class LeadSharingRules {
    global List<ints.MetadataService.LeadCriteriaBasedSharingRule> criteriaBasedRules;
    global List<ints.MetadataService.LeadOwnerSharingRule> ownerRules;
    global LeadSharingRules() {

    }
}
global class Letterhead extends ints.MetadataService.MetadataAPI {
    global Boolean available;
    global String backgroundColor;
    global String bodyColor;
    global ints.MetadataService.LetterheadLine bottomLine;
    global String description;
    global ints.MetadataService.LetterheadHeaderFooter footer;
    global String fullName;
    global ints.MetadataService.LetterheadHeaderFooter header;
    global ints.MetadataService.LetterheadLine middleLine;
    global String name;
    global ints.MetadataService.LetterheadLine topLine;
    global String type;
    global Letterhead() {

    }
}
global class LetterheadHeaderFooter {
    global String backgroundColor;
    global Integer height;
    global String horizontalAlignment;
    global String logo;
    global String verticalAlignment;
    global LetterheadHeaderFooter() {

    }
}
global class LetterheadLine {
    global String color;
    global Integer height;
    global LetterheadLine() {

    }
}
global class ListMetadataQuery {
    global String folder;
    global String type_x;
    global ListMetadataQuery() {

    }
}
global class ListPlacement {
    global Integer height;
    global String location;
    global String units;
    global Integer width;
    global ListPlacement() {

    }
}
global class ListView extends ints.MetadataService.MetadataAPI {
    global String booleanFilter;
    global List<String> columns;
    global String division;
    global List<ints.MetadataService.ListViewFilter> filters;
    global String filterScope;
    global String fullName;
    global String label;
    global String language;
    global String queue;
    global ints.MetadataService.SharedTo sharedTo;
    global String type;
    global ListView() {

    }
}
global class ListViewFilter {
    global String field;
    global String operation;
    global String value;
    global ListViewFilter() {

    }
}
global class LiveChatButton extends ints.MetadataService.MetadataAPI {
    global String animation;
    global String autoGreeting;
    global String chatPage;
    global String customAgentName;
    global ints.MetadataService.LiveChatButtonDeployments deployments;
    global Boolean enableQueue;
    global String fullName;
    global String inviteEndPosition;
    global String inviteImage;
    global String inviteStartPosition;
    global Boolean isActive;
    global String label;
    global Integer numberOfReroutingAttempts;
    global String offlineImage;
    global String onlineImage;
    global Boolean optionsCustomRoutingIsEnabled;
    global Boolean optionsHasInviteAfterAccept;
    global Boolean optionsHasInviteAfterReject;
    global Boolean optionsHasRerouteDeclinedRequest;
    global Boolean optionsIsAutoAccept;
    global Boolean optionsIsInviteAutoRemove;
    global Integer overallQueueLength;
    global Integer perAgentQueueLength;
    global String postChatPage;
    global String postChatUrl;
    global String preChatFormPage;
    global String preChatFormUrl;
    global Integer pushTimeOut;
    global String routingType;
    global String site;
    global ints.MetadataService.LiveChatButtonSkills skills;
    global Integer timeToRemoveInvite;
    global String type;
    global String type_x;
    global String windowLanguage;
    global LiveChatButton() {

    }
}
global class LiveChatButtonDeployments {
    global List<String> deployment;
    global LiveChatButtonDeployments() {

    }
}
global class LiveChatButtonSkills {
    global List<String> skill;
    global LiveChatButtonSkills() {

    }
}
global class LiveChatDeploymentDomainWhitelist {
    global List<String> domain;
    global LiveChatDeploymentDomainWhitelist() {

    }
}
global class LogInfo {
    global String category;
    global String level;
    global LogInfo() {

    }
}
global class LookupFilter {
    global Boolean active;
    global String booleanFilter;
    global String description;
    global String errorMessage;
    global List<ints.MetadataService.FilterItem> filterItems;
    global String infoMessage;
    global Boolean isOptional;
    global LookupFilter() {

    }
}
global class LookupFilterTranslation {
    global String errorMessage;
    global String informationalMessage;
    global LookupFilterTranslation() {

    }
}
global virtual class MetadataAPI {
    global String fullName;
    global MetadataAPI() {

    }
}
global class MetadataPort {
    global ints.MetadataService.CallOptions_element CallOptions;
    global String clientCert_x;
    global String clientCertName_x;
    global String clientCertPasswd_x;
    global ints.MetadataService.DebuggingHeader_element DebuggingHeader;
    global ints.MetadataService.DebuggingInfo_element DebuggingInfo;
    global String endpoint_x;
    global Map<String,String> inputHttpHeaders_x;
    global Map<String,String> outputHttpHeaders_x;
    global ints.MetadataService.SessionHeader_element SessionHeader;
    global Integer timeout_x;
    global MetadataPort() {

    }
    global ints.MetadataService.CancelDeployResult cancelDeploy(String String_x) {
        return null;
    }
    global ints.MetadataService.RetrieveResult checkRetrieveStatus(String asyncProcessId) {
        return null;
    }
    global List<ints.MetadataService.AsyncResult> checkStatus(List<String> asyncProcessId) {
        return null;
    }
    global List<ints.MetadataService.SaveResult> createMetadata(List<ints.MetadataService.MetadataAPI> metadata) {
        return null;
    }
    global List<ints.MetadataService.AsyncResult> create(List<ints.MetadataService.MetadataAPI> metadata) {
        return null;
    }
    global List<ints.MetadataService.AsyncResult> deleteMetadata(List<ints.MetadataService.MetadataAPI> metadata) {
        return null;
    }
    global List<ints.MetadataService.DeleteResult> deleteMetadata(String type_x, List<String> fullNames) {
        return null;
    }
    global ints.MetadataService.DescribeMetadataResult describeMetadata(Double asOfVersion) {
        return null;
    }
    global List<ints.MetadataService.FileProperties> listMetadata(List<ints.MetadataService.ListMetadataQuery> queries, Double asOfVersion) {
        return null;
    }
    global ints.MetadataService.IReadResult readMetadata(String type_x, List<String> fullNames) {
        return null;
    }
    global ints.MetadataService.SaveResult renameMetadata(String type_x, String oldFullName, String newFullName) {
        return null;
    }
    global List<ints.MetadataService.AsyncResult> updateMetadata(List<ints.MetadataService.UpdateMetadata> UpdateMetadata) {
        return null;
    }
    global List<ints.MetadataService.SaveResult> updateMetadata(List<ints.MetadataService.MetadataAPI> metadata) {
        return null;
    }
}
global virtual class MetadataWithContent extends ints.MetadataService.MetadataAPI {
    global String content;
    global MetadataWithContent() {

    }
}
global class MilestoneType extends ints.MetadataService.MetadataAPI {
    global String description;
    global String fullName;
    global String recurrenceType;
    global String type;
    global MilestoneType() {

    }
}
global class MiniLayout {
    global List<String> fields;
    global List<ints.MetadataService.RelatedListItem> relatedLists;
    global MiniLayout() {

    }
}
global class MobileSettings extends ints.MetadataService.MetadataAPI {
    global ints.MetadataService.ChatterMobileSettings chatterMobile;
    global ints.MetadataService.DashboardMobileSettings dashboardMobile;
    global String fullName;
    global ints.MetadataService.SFDCMobileSettings salesforceMobile;
    global ints.MetadataService.TouchMobileSettings touchMobile;
    global String type;
    global MobileSettings() {

    }
}
global class Network extends ints.MetadataService.MetadataAPI {
    global Boolean allowMembersToFlag;
    global ints.MetadataService.Branding branding;
    global String caseCommentEmailTemplate;
    global String changePasswordTemplate;
    global String description;
    global String emailSenderAddress;
    global String emailSenderName;
    global Boolean enableInvitation;
    global Boolean enableKnowledgeable;
    global Boolean enablePrivateMessages;
    global String forgotPasswordTemplate;
    global String fullName;
    global ints.MetadataService.NetworkMemberGroup networkMemberGroups;
    global String newSenderAddress;
    global String picassoSite;
    global Boolean selfRegistration;
    global String selfRegProfile;
    global Boolean sendWelcomeEmail;
    global String site;
    global String status;
    global ints.MetadataService.NetworkTabSet tabs;
    global String type;
    global String urlPathPrefix;
    global String welcomeTemplate;
    global Network() {

    }
}
global class NetworkAccess {
    global List<ints.MetadataService.IpRange> ipRanges;
    global NetworkAccess() {

    }
}
global class NetworkMemberGroup {
    global List<String> permissionSet;
    global List<String> profile;
    global NetworkMemberGroup() {

    }
}
global class NetworkTabSet {
    global List<String> customTab;
    global String defaultTab;
    global List<String> standardTab;
    global NetworkTabSet() {

    }
}
global class NextAutomatedApprover {
    global Boolean useApproverFieldOfRecordOwner;
    global String userHierarchyField;
    global NextAutomatedApprover() {

    }
}
global class ObjectNameCaseValue {
    global String article;
    global String caseType;
    global Boolean plural;
    global String possessive;
    global String value;
    global ObjectNameCaseValue() {

    }
}
global class ObjectRelationship {
    global ints.MetadataService.ObjectRelationship join_x;
    global Boolean outerJoin;
    global String relationship;
    global ObjectRelationship() {

    }
}
global class ObjectUsage {
    global List<String> object_x;
    global ObjectUsage() {

    }
}
global class OpportunityCriteriaBasedSharingRule {
    global String booleanFilter;
    global String description;
    global String name;
    global String opportunityAccessLevel;
    global OpportunityCriteriaBasedSharingRule() {

    }
}
global class OpportunityListFieldsSelectedSettings {
    global List<String> field;
    global OpportunityListFieldsSelectedSettings() {

    }
}
global class OpportunitySettings extends ints.MetadataService.MetadataAPI {
    global Boolean autoActivateNewReminders;
    global Boolean enableFindSimilarOpportunities;
    global Boolean enableOpportunityTeam;
    global Boolean enableUpdateReminders;
    global ints.MetadataService.FindSimilarOppFilter findSimilarOppFilter;
    global String fullName;
    global Boolean promptToAddProducts;
    global String type;
    global OpportunitySettings() {

    }
}
global class OrderSettings extends ints.MetadataService.MetadataAPI {
    global Boolean enableNegativeQuantity;
    global Boolean enableOrders;
    global Boolean enableReductionOrders;
    global String fullName;
    global String type;
    global OrderSettings() {

    }
}
global class OwnerSharingRule {
    global ints.MetadataService.SharedTo sharedFrom;
    global OwnerSharingRule() {

    }
}
global class PackageTypeMembers {
    global List<String> members;
    global String name;
    global PackageTypeMembers() {

    }
}
global class PackageVersion {
    global Integer majorNumber;
    global Integer minorNumber;
    global String namespace;
    global PackageVersion() {

    }
}
global class PagesToOpen {
    global List<String> pageToOpen;
    global PagesToOpen() {

    }
}
global class PermissionSetApexPageAccess {
    global String apexPage;
    global Boolean enabled;
    global PermissionSetApexPageAccess() {

    }
}
global class PermissionSetApplicationVisibility {
    global String application;
    global Boolean visible;
    global PermissionSetApplicationVisibility() {

    }
}
global class PermissionSetExternalDataSourceAccess {
    global Boolean enabled;
    global String externalDataSource;
    global PermissionSetExternalDataSourceAccess() {

    }
}
global class PermissionSetFieldPermissions {
    global Boolean editable;
    global String field;
    global Boolean readable;
    global PermissionSetFieldPermissions() {

    }
}
global class PermissionSetObjectPermissions {
    global Boolean allowCreate;
    global Boolean allowDelete;
    global Boolean allowEdit;
    global Boolean allowRead;
    global Boolean modifyAllRecords;
    global String object_x;
    global Boolean viewAllRecords;
    global PermissionSetObjectPermissions() {

    }
}
global class PermissionSetRecordTypeVisibility {
    global String recordType;
    global Boolean visible;
    global PermissionSetRecordTypeVisibility() {

    }
}
global class PermissionSetTabSetting {
    global String tab;
    global String visibility;
    global PermissionSetTabSetting() {

    }
}
global class PermissionSetUserPermission {
    global Boolean enabled;
    global String name;
    global PermissionSetUserPermission() {

    }
}
global class Picklist {
    global String controllingField;
    global List<ints.MetadataService.PicklistValue> picklistValues;
    global Boolean sorted;
    global Picklist() {

    }
}
global class PicklistValue extends ints.MetadataService.MetadataAPI {
    global Boolean allowEmail;
    global Boolean closed;
    global String color;
    global List<String> controllingFieldValues;
    global Boolean converted;
    global Boolean cssExposed;
    global Boolean default_x;
    global String description;
    global String forecastCategory;
    global String fullName;
    global Boolean highPriority;
    global Integer probability;
    global String reverseRole;
    global Boolean reviewed;
    global String type;
    global Boolean won;
    global PicklistValue() {

    }
}
global class PicklistValueTranslation {
    global String masterLabel;
    global String translation;
    global PicklistValueTranslation() {

    }
}
global class PostTemplate extends ints.MetadataService.MetadataAPI {
    global Boolean default_x;
    global String description;
    global List<String> fields;
    global String fullName;
    global String label;
    global String type;
    global PostTemplate() {

    }
}
global class ProductSettings extends ints.MetadataService.MetadataAPI {
    global Boolean enableCascadeActivateToRelatedPrices;
    global Boolean enableQuantitySchedule;
    global Boolean enableRevenueSchedule;
    global String fullName;
    global String type;
    global ProductSettings() {

    }
}
global class ProfileApexClassAccess {
    global String apexClass;
    global Boolean enabled;
    global ProfileApexClassAccess() {

    }
}
global class ProfileApexPageAccess {
    global String apexPage;
    global Boolean enabled;
    global ProfileApexPageAccess() {

    }
}
global class ProfileExternalDataSourceAccess {
    global Boolean enabled;
    global String externalDataSource;
    global ProfileExternalDataSourceAccess() {

    }
}
global class ProfileFieldLevelSecurity {
    global Boolean editable;
    global String field;
    global Boolean readable;
    global ProfileFieldLevelSecurity() {

    }
}
global class ProfileLayoutAssignment {
    global String layout;
    global String recordType;
    global ProfileLayoutAssignment() {

    }
}
global class ProfileLoginHours {
    global String fridayEnd;
    global String fridayStart;
    global String mondayEnd;
    global String mondayStart;
    global String saturdayEnd;
    global String saturdayStart;
    global String sundayEnd;
    global String sundayStart;
    global String thursdayEnd;
    global String thursdayStart;
    global String tuesdayEnd;
    global String tuesdayStart;
    global String wednesdayEnd;
    global String wednesdayStart;
    global ProfileLoginHours() {

    }
}
global class ProfileObjectPermissions {
    global Boolean allowCreate;
    global Boolean allowDelete;
    global Boolean allowEdit;
    global Boolean allowRead;
    global Boolean modifyAllRecords;
    global String object_x;
    global Boolean viewAllRecords;
    global ProfileObjectPermissions() {

    }
}
global class ProfileRecordTypeVisibility {
    global Boolean default_x;
    global Boolean personAccountDefault;
    global String recordType;
    global Boolean visible;
    global ProfileRecordTypeVisibility() {

    }
}
global class ProfileTabVisibility {
    global String tab;
    global String visibility;
    global ProfileTabVisibility() {

    }
}
global class ProfileUserPermission {
    global Boolean enabled;
    global String name;
    global ProfileUserPermission() {

    }
}
global class PushNotification {
    global List<String> fieldNames;
    global String objectName;
    global PushNotification() {

    }
}
global class PushNotifications {
    global List<ints.MetadataService.PushNotification> pushNotification;
    global PushNotifications() {

    }
}
global class Queue extends ints.MetadataService.MetadataAPI {
    global Boolean doesSendEmailToMembers;
    global String email;
    global String fullName;
    global String name;
    global List<ints.MetadataService.QueueSobject> queueSobject;
    global String type;
    global Queue() {

    }
}
global class QueueSobject {
    global String sobjectType;
    global QueueSobject() {

    }
}
global class QuickAction extends ints.MetadataService.MetadataAPI {
    global String canvas;
    global String description;
    global List<ints.MetadataService.FieldOverride> fieldOverrides;
    global String fullName;
    global Integer height;
    global String icon;
    global Boolean isProtected;
    global String label;
    global String page_x;
    global ints.MetadataService.QuickActionLayout quickActionLayout;
    global String standardLabel;
    global String targetObject;
    global String targetParentField;
    global String targetRecordType;
    global String type;
    global String type_x;
    global Integer width;
    global QuickAction() {

    }
}
global class QuickActionLayout {
    global String layoutSectionStyle;
    global List<ints.MetadataService.QuickActionLayoutColumn> quickActionLayoutColumns;
    global QuickActionLayout() {

    }
}
global class QuickActionLayoutColumn {
    global List<ints.MetadataService.QuickActionLayoutItem> quickActionLayoutItems;
    global QuickActionLayoutColumn() {

    }
}
global class QuickActionLayoutItem {
    global Boolean emptySpace;
    global String field;
    global String uiBehavior;
    global QuickActionLayoutItem() {

    }
}
global class QuickActionList {
    global List<ints.MetadataService.QuickActionListItem> quickActionListItems;
    global QuickActionList() {

    }
}
global class QuickActionListItem {
    global String quickActionName;
    global QuickActionListItem() {

    }
}
global class QuickActionTranslation {
    global String label;
    global String name;
    global QuickActionTranslation() {

    }
}
global class QuotasSettings {
    global Boolean showQuotas;
    global QuotasSettings() {

    }
}
global class QuoteSettings extends ints.MetadataService.MetadataAPI {
    global Boolean enableQuote;
    global String fullName;
    global String type;
    global QuoteSettings() {

    }
}
global class ReadAccountSettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.AccountSettings> records;
    global ReadAccountSettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadApexClassResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.ApexClass> records;
    global ReadApexClassResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadApexComponentResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.ApexComponent> records;
    global ReadApexComponentResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadApexPageResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.ApexPage> records;
    global ReadApexPageResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadApexTriggerResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.ApexTrigger> records;
    global ReadApexTriggerResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadAuthProviderResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.AuthProvider> records;
    global ReadAuthProviderResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadBaseSharingRuleResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.BaseSharingRule> records;
    global ReadBaseSharingRuleResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadBusinessProcessResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.BusinessProcess> records;
    global ReadBusinessProcessResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCallCenterResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.CallCenter> records;
    global ReadCallCenterResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadChatterAnswersSettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.ChatterAnswersSettings> records;
    global ReadChatterAnswersSettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCompactLayoutResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.CompactLayout> records;
    global ReadCompactLayoutResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCompanySettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.CompanySettings> records;
    global ReadCompanySettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadContractSettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.ContractSettings> records;
    global ReadContractSettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCustomDataTypeResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.CustomDataType> records;
    global ReadCustomDataTypeResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCustomFieldResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.Field> records;
    global ReadCustomFieldResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCustomLabelResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.CustomLabel> records;
    global ReadCustomLabelResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCustomLabelsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.CustomLabels> records;
    global ReadCustomLabelsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCustomObjectResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.CustomObject> records;
    global ReadCustomObjectResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadCustomTabResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.CustomTab> records;
    global ReadCustomTabResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadDataCategoryGroupResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.DataCategoryGroup> records;
    global ReadDataCategoryGroupResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadDocumentResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.Document> records;
    global ReadDocumentResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadEntitlementSettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.EntitlementSettings> records;
    global ReadEntitlementSettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadEntitlementTemplateResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.EntitlementTemplate> records;
    global ReadEntitlementTemplateResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadFlexiPageResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.FlexiPage> records;
    global ReadFlexiPageResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadGroupResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.Group_x> records;
    global ReadGroupResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadHomePageComponentResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.HomePageComponent> records;
    global ReadHomePageComponentResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadHomePageLayoutResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.HomePageLayout> records;
    global ReadHomePageLayoutResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadInstalledPackageResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.InstalledPackage> records;
    global ReadInstalledPackageResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadLetterheadResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.Letterhead> records;
    global ReadLetterheadResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadLiveChatButtonResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.LiveChatButton> records;
    global ReadLiveChatButtonResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadMilestoneTypeResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.MilestoneType> records;
    global ReadMilestoneTypeResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadMobileSettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.MobileSettings> records;
    global ReadMobileSettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadNetworkResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.Network> records;
    global ReadNetworkResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadOpportunitySettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.OpportunitySettings> records;
    global ReadOpportunitySettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadPicklistValueResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.PicklistValue> records;
    global ReadPicklistValueResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadPostTemplateResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.PostTemplate> records;
    global ReadPostTemplateResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadProductSettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.ProductSettings> records;
    global ReadProductSettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadQueueResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.Queue> records;
    global ReadQueueResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadQuoteSettingsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.QuoteSettings> records;
    global ReadQuoteSettingsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadRecordTypeResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.RecordType> records;
    global ReadRecordTypeResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadRemoteSiteSettingResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.RemoteSiteSetting> records;
    global ReadRemoteSiteSettingResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadResult {
    global List<ints.MetadataService.MetadataAPI> records;
    global ReadResult() {

    }
}
global class ReadSamlSsoConfigResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.SamlSsoConfig> records;
    global ReadSamlSsoConfigResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadScontrolResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.Scontrol> records;
    global ReadScontrolResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadSharingReasonResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.SharingReason> records;
    global ReadSharingReasonResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadSharingRulesResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.SharingRules> records;
    global ReadSharingRulesResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadSiteDotComResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.SiteDotCom> records;
    global ReadSiteDotComResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadStaticResourceResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.StaticResource> records;
    global ReadStaticResourceResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadSynonymDictionaryResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.SynonymDictionary> records;
    global ReadSynonymDictionaryResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadTranslationsResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.Translations> records;
    global ReadTranslationsResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadValidationRuleResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.ValidationRule> records;
    global ReadValidationRuleResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadWorkflowActionResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.WorkflowAction> records;
    global ReadWorkflowActionResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadWorkflowFieldUpdateResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.WorkflowFieldUpdate> records;
    global ReadWorkflowFieldUpdateResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadWorkflowKnowledgePublishResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.WorkflowKnowledgePublish> records;
    global ReadWorkflowKnowledgePublishResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadWorkflowOutboundMessageResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.WorkflowOutboundMessage> records;
    global ReadWorkflowOutboundMessageResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadWorkflowSendResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.WorkflowSend> records;
    global ReadWorkflowSendResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class ReadWorkflowTaskResult implements ints.MetadataService.IReadResult {
    global List<ints.MetadataService.WorkflowTask> records;
    global ReadWorkflowTaskResult() {

    }
    global List<ints.MetadataService.MetadataAPI> getRecords() {
        return null;
    }
}
global class RecordType extends ints.MetadataService.MetadataAPI {
    global Boolean active;
    global String businessProcess;
    global String compactLayoutAssignment;
    global String description;
    global String fullName;
    global String label;
    global List<ints.MetadataService.RecordTypePicklistValue> picklistValues;
    global String type;
    global RecordType() {

    }
}
global class RecordTypePicklistValue {
    global String picklist;
    global List<ints.MetadataService.PicklistValue> values;
    global RecordTypePicklistValue() {

    }
}
global class RecordTypeTranslation {
    global String label;
    global String name;
    global RecordTypeTranslation() {

    }
}
global class RelatedContent {
    global List<ints.MetadataService.RelatedContentItem> relatedContentItems;
    global RelatedContent() {

    }
}
global class RelatedContentItem {
    global ints.MetadataService.LayoutItem layoutItem;
    global RelatedContentItem() {

    }
}
global class RelatedListItem {
    global List<String> customButtons;
    global List<String> excludeButtons;
    global List<String> fields;
    global String relatedList;
    global String sortField;
    global String sortOrder;
    global RelatedListItem() {

    }
}
global class RemoteSiteSetting extends ints.MetadataService.MetadataAPI {
    global String description;
    global Boolean disableProtocolSecurity;
    global String fullName;
    global Boolean isActive;
    global String type;
    global String url;
    global RemoteSiteSetting() {

    }
}
global class ReportAggregate {
    global String acrossGroupingContext;
    global String calculatedFormula;
    global String datatype;
    global String description;
    global String developerName;
    global String downGroupingContext;
    global Boolean isActive;
    global Boolean isCrossBlock;
    global String masterLabel;
    global String reportType;
    global Integer scale;
    global ReportAggregate() {

    }
}
global class ReportAggregateReference {
    global String aggregate;
    global ReportAggregateReference() {

    }
}
global class ReportBucketField {
    global String bucketType;
    global String developerName;
    global String masterLabel;
    global String nullTreatment;
    global String otherBucketLabel;
    global String sourceColumnName;
    global Boolean useOther;
    global List<ints.MetadataService.ReportBucketFieldValue> values;
    global ReportBucketField() {

    }
}
global class ReportBucketFieldSourceValue {
    global String from_x;
    global String sourceValue;
    global String to;
    global ReportBucketFieldSourceValue() {

    }
}
global class ReportBucketFieldValue {
    global List<ints.MetadataService.ReportBucketFieldSourceValue> sourceValues;
    global String value;
    global ReportBucketFieldValue() {

    }
}
global class ReportChart {
    global String backgroundColor1;
    global String backgroundColor2;
    global String backgroundFadeDir;
    global List<ints.MetadataService.ChartSummary> chartSummaries;
    global String chartType;
    global Boolean enableHoverLabels;
    global Boolean expandOthers;
    global String groupingColumn;
    global String legendPosition;
    global String location;
    global String secondaryGroupingColumn;
    global Boolean showAxisLabels;
    global Boolean showPercentage;
    global Boolean showTotal;
    global Boolean showValues;
    global String size;
    global Double summaryAxisManualRangeEnd;
    global Double summaryAxisManualRangeStart;
    global String summaryAxisRange;
    global String textColor;
    global Integer textSize;
    global String title;
    global String titleColor;
    global Integer titleSize;
    global ReportChart() {

    }
}
global class ReportChartComponentLayoutItem {
    global Boolean cacheData;
    global String contextFilterableField;
    global Boolean hideOnError;
    global Boolean includeContext;
    global String reportName;
    global Boolean showTitle;
    global String size;
    global ReportChartComponentLayoutItem() {

    }
}
global class ReportColorRange {
    global String aggregate;
    global String columnName;
    global Double highBreakpoint;
    global String highColor;
    global Double lowBreakpoint;
    global String lowColor;
    global String midColor;
    global ReportColorRange() {

    }
}
global class ReportColumn {
    global List<String> aggregateTypes;
    global String field;
    global Boolean reverseColors;
    global Boolean showChanges;
    global ReportColumn() {

    }
}
global class ReportCrossFilter {
    global List<ints.MetadataService.ReportFilterItem> criteriaItems;
    global String operation;
    global String primaryTableColumn;
    global String relatedTable;
    global String relatedTableJoinColumn;
    global ReportCrossFilter() {

    }
}
global class ReportDataCategoryFilter {
    global String dataCategory;
    global String dataCategoryGroup;
    global String operator;
    global ReportDataCategoryFilter() {

    }
}
global class ReportFilter {
    global String booleanFilter;
    global List<ints.MetadataService.ReportFilterItem> criteriaItems;
    global String language;
    global ReportFilter() {

    }
}
global class ReportFilterItem {
    global String column;
    global Boolean columnToColumn;
    global String operator;
    global String snapshot;
    global String value;
    global ReportFilterItem() {

    }
}
global class ReportFolder {
    global ReportFolder() {

    }
}
global class ReportGrouping {
    global String aggregateType;
    global String dateGranularity;
    global String field;
    global String sortByName;
    global String sortOrder;
    global String sortType;
    global ReportGrouping() {

    }
}
global class ReportHistoricalSelector {
    global List<String> snapshot;
    global ReportHistoricalSelector() {

    }
}
global class ReportParam {
    global String name;
    global String value;
    global ReportParam() {

    }
}
global class ReportTimeFrameFilter {
    global String dateColumn;
    global Date endDate;
    global String interval;
    global Date startDate;
    global ReportTimeFrameFilter() {

    }
}
global class ReportTypeColumnTranslation {
    global String label;
    global String name;
    global ReportTypeColumnTranslation() {

    }
}
global class ReportTypeSectionTranslation {
    global List<ints.MetadataService.ReportTypeColumnTranslation> columns;
    global String label;
    global String name;
    global ReportTypeSectionTranslation() {

    }
}
global class ReportTypeTranslation {
    global String description;
    global String label;
    global String name;
    global List<ints.MetadataService.ReportTypeSectionTranslation> sections;
    global ReportTypeTranslation() {

    }
}
global class RetrieveMessage {
    global String fileName;
    global String problem;
    global RetrieveMessage() {

    }
}
global class RetrieveResult {
    global List<ints.MetadataService.FileProperties> fileProperties;
    global String id;
    global List<ints.MetadataService.RetrieveMessage> messages;
    global String zipFile;
    global RetrieveResult() {

    }
}
global class Role {
    global String parentRole;
    global Role() {

    }
}
global class RunTestSuccess {
    global String id;
    global String methodName;
    global String name;
    global String namespace;
    global Double time_x;
    global RunTestSuccess() {

    }
}
global class SFDCMobileSettings {
    global Boolean enableMobileLite;
    global Boolean enableUserToDeviceLinking;
    global SFDCMobileSettings() {

    }
}
global class SamlSsoConfig extends ints.MetadataService.MetadataAPI {
    global String attributeName;
    global String attributeNameIdFormat;
    global String decryptionCertificate;
    global String errorUrl;
    global String fullName;
    global String identityLocation;
    global String identityMapping;
    global String issuer;
    global String loginUrl;
    global String logoutUrl;
    global String name;
    global String oauthTokenEndpoint;
    global Boolean redirectBinding;
    global String salesforceLoginUrl;
    global String samlEntityId;
    global String samlVersion;
    global String type;
    global Boolean userProvisioning;
    global String validationCert;
    global SamlSsoConfig() {

    }
}
global class SaveResult {
    global List<ints.MetadataService.Error> errors;
    global String fullName;
    global Boolean success;
    global SaveResult() {

    }
}
global class Scontrol extends ints.MetadataService.MetadataWithContent {
    global String content;
    global String contentSource;
    global String description;
    global String encodingKey;
    global String fileContent;
    global String fileName;
    global String fullName;
    global String name;
    global Boolean supportsCaching;
    global String type;
    global Scontrol() {

    }
}
global class ScontrolTranslation {
    global String label;
    global String name;
    global ScontrolTranslation() {

    }
}
global class SearchLayouts {
    global List<String> customTabListAdditionalFields;
    global List<String> excludedStandardButtons;
    global List<String> listViewButtons;
    global List<String> lookupDialogsAdditionalFields;
    global List<String> lookupFilterFields;
    global List<String> lookupPhoneDialogsAdditionalFields;
    global List<String> searchFilterFields;
    global List<String> searchResultsAdditionalFields;
    global List<String> searchResultsCustomButtons;
    global SearchLayouts() {

    }
}
global class SessionHeader_element {
    global String sessionId;
    global SessionHeader_element() {

    }
}
global class SessionSettings {
    global Boolean disableTimeoutWarning;
    global Boolean enableCacheAndAutocomplete;
    global Boolean enableClickjackNonsetupSFDC;
    global Boolean enableClickjackNonsetupUser;
    global Boolean enableClickjackSetup;
    global Boolean enableCSRFOnGet;
    global Boolean enableCSRFOnPost;
    global Boolean enableSMSIdentity;
    global Boolean forceRelogin;
    global Boolean lockSessionsToIp;
    global String sessionTimeout;
    global SessionSettings() {

    }
}
global class SharedTo {
    global String allCustomerPortalUsers;
    global String allInternalUsers;
    global String allPartnerUsers;
    global List<String> group_x;
    global List<String> groups;
    global List<String> managers;
    global List<String> managerSubordinates;
    global List<String> portalRole;
    global List<String> portalRoleAndSubordinates;
    global List<String> queue;
    global List<String> role;
    global List<String> roleAndSubordinates;
    global List<String> roleAndSubordinatesInternal;
    global List<String> roles;
    global List<String> rolesAndSubordinates;
    global List<String> territories;
    global List<String> territoriesAndSubordinates;
    global List<String> territory;
    global List<String> territoryAndSubordinates;
    global SharedTo() {

    }
}
global class SharingReason extends ints.MetadataService.MetadataAPI {
    global String fullName;
    global String label;
    global String type;
    global SharingReason() {

    }
}
global class SharingReasonTranslation {
    global String label;
    global String name;
    global SharingReasonTranslation() {

    }
}
global class SharingRecalculation {
    global String className;
    global SharingRecalculation() {

    }
}
global class SharingRules extends ints.MetadataService.MetadataAPI {
    global String fullName;
    global String type;
    global SharingRules() {

    }
}
global class SharingSet extends ints.MetadataService.MetadataAPI {
    global List<ints.MetadataService.AccessMapping> accessMappings;
    global String description;
    global String fullName;
    global String name;
    global List<String> profiles;
    global String type;
    global SharingSet() {

    }
}
global class SiteDotCom extends ints.MetadataService.MetadataWithContent {
    global String content;
    global String fullName;
    global String label;
    global String siteType;
    global String type;
    global SiteDotCom() {

    }
}
global class SiteRedirectMapping {
    global String action;
    global Boolean isActive;
    global String source;
    global String target;
    global SiteRedirectMapping() {

    }
}
global class SiteWebAddress {
    global String certificate;
    global String domainName;
    global Boolean primary;
    global SiteWebAddress() {

    }
}
global class SkillProfileAssignments {
    global List<String> profile;
    global SkillProfileAssignments() {

    }
}
global class SkillUserAssignments {
    global List<String> user_x;
    global SkillUserAssignments() {

    }
}
global class State {
    global Boolean active;
    global String integrationValue;
    global String isoCode;
    global String label;
    global Boolean standard;
    global Boolean visible;
    global State() {

    }
}
global class StaticResource extends ints.MetadataService.MetadataWithContent {
    global String cacheControl;
    global String content;
    global String contentType;
    global String description;
    global String fullName;
    global String type;
    global StaticResource() {

    }
}
global class SummaryLayoutItem {
    global String customLink;
    global String field;
    global Integer posX;
    global Integer posY;
    global Integer posZ;
    global SummaryLayoutItem() {

    }
}
global class SupervisorAgentConfigSkills {
    global List<String> skill;
    global SupervisorAgentConfigSkills() {

    }
}
global class SynonymDictionary extends ints.MetadataService.MetadataAPI {
    global String fullName;
    global List<ints.MetadataService.SynonymGroup> groups;
    global Boolean isProtected;
    global String label;
    global String type;
    global SynonymDictionary() {

    }
}
global class SynonymGroup {
    global List<String> languages;
    global List<String> terms;
    global SynonymGroup() {

    }
}
global class Territory {
    global String parentTerritory;
    global Territory() {

    }
}
global class TouchMobileSettings {
    global Boolean enableTouchAppIPad;
    global Boolean enableTouchAppIPhone;
    global Boolean enableTouchBrowserIPad;
    global Boolean enableTouchIosPhone;
    global Boolean enableVisualforceInTouch;
    global TouchMobileSettings() {

    }
}
global class Translations extends ints.MetadataService.MetadataAPI {
    global List<ints.MetadataService.CustomApplicationTranslation> customApplications;
    global List<ints.MetadataService.CustomDataTypeTranslation> customDataTypeTranslations;
    global List<ints.MetadataService.CustomLabelTranslation> customLabels;
    global List<ints.MetadataService.CustomPageWebLinkTranslation> customPageWebLinks;
    global List<ints.MetadataService.CustomTabTranslation> customTabs;
    global String fullName;
    global List<ints.MetadataService.GlobalQuickActionTranslation> quickActions;
    global List<ints.MetadataService.ReportTypeTranslation> reportTypes;
    global List<ints.MetadataService.ScontrolTranslation> scontrols;
    global String type;
    global Translations() {

    }
}
global class UpdateMetadata {
    global String currentName;
    global ints.MetadataService.MetadataAPI metadata;
    global UpdateMetadata() {

    }
}
global class UserCriteriaBasedSharingRule {
    global String booleanFilter;
    global String description;
    global String name;
    global String userAccessLevel;
    global UserCriteriaBasedSharingRule() {

    }
}
global class UserMembershipSharingRule {
    global String description;
    global String name;
    global String userAccessLevel;
    global UserMembershipSharingRule() {

    }
}
global class ValidationRule extends ints.MetadataService.MetadataAPI {
    global Boolean active;
    global String description;
    global String errorConditionFormula;
    global String errorDisplayField;
    global String errorMessage;
    global String fullName;
    global String type;
    global ValidationRule() {

    }
}
global class ValidationRuleTranslation {
    global String errorMessage;
    global String name;
    global ValidationRuleTranslation() {

    }
}
global class WebLink extends ints.MetadataService.MetadataAPI {
    global String availability;
    global String description;
    global String displayType;
    global String encodingKey;
    global String fullName;
    global Boolean hasMenubar;
    global Boolean hasScrollbars;
    global Boolean hasToolbar;
    global Integer height;
    global Boolean isResizable;
    global String linkType;
    global String masterLabel;
    global String openType;
    global String page_x;
    global String position;
    global Boolean protected_x;
    global Boolean requireRowSelection;
    global String scontrol;
    global Boolean showsLocation;
    global Boolean showsStatus;
    global String type;
    global String url;
    global Integer width;
    global WebLink() {

    }
}
global class WebLinkTranslation {
    global String label;
    global String name;
    global WebLinkTranslation() {

    }
}
global class WebToCaseSettings {
    global String caseOrigin;
    global String defaultResponseTemplate;
    global Boolean enableWebToCase;
    global WebToCaseSettings() {

    }
}
global virtual class WorkflowAction extends ints.MetadataService.MetadataAPI {
    global WorkflowAction() {

    }
}
global class WorkflowFieldUpdate extends ints.MetadataService.WorkflowAction {
    global String description;
    global String field;
    global String formula;
    global String fullName;
    global String literalValue;
    global String lookupValue;
    global String lookupValueType;
    global String name;
    global Boolean notifyAssignee;
    global String operation;
    global Boolean protected_x;
    global Boolean reevaluateOnChange;
    global String targetObject;
    global String type;
    global WorkflowFieldUpdate() {

    }
}
global class WorkflowKnowledgePublish extends ints.MetadataService.WorkflowAction {
    global String action;
    global String description;
    global String fullName;
    global String label;
    global String language;
    global Boolean protected_x;
    global String type;
    global WorkflowKnowledgePublish() {

    }
}
global class WorkflowOutboundMessage extends ints.MetadataService.WorkflowAction {
    global Double apiVersion;
    global String description;
    global String endpointUrl;
    global List<String> fields;
    global String fullName;
    global Boolean includeSessionId;
    global String integrationUser;
    global String name;
    global Boolean protected_x;
    global String type;
    global Boolean useDeadLetterQueue;
    global WorkflowOutboundMessage() {

    }
}
global class WorkflowSend extends ints.MetadataService.WorkflowAction {
    global String action;
    global String description;
    global String fullName;
    global String label;
    global String language;
    global Boolean protected_x;
    global String type;
    global WorkflowSend() {

    }
}
global class WorkflowTask extends ints.MetadataService.WorkflowAction {
    global String assignedTo;
    global String assignedToType;
    global String description;
    global Integer dueDateOffset;
    global String fullName;
    global Boolean notifyAssignee;
    global String offsetFromField;
    global String priority;
    global Boolean protected_x;
    global String status;
    global String subject;
    global String type;
    global WorkflowTask() {

    }
}
global class WorkspaceMapping {
    global String fieldName;
    global String tab;
    global WorkspaceMapping() {

    }
}
global class WorkspaceMappings {
    global List<ints.MetadataService.WorkspaceMapping> mapping;
    global WorkspaceMappings() {

    }
}
global class cancelDeployResponse_element {
    global ints.MetadataService.CancelDeployResult result;
    global cancelDeployResponse_element() {

    }
}
global class cancelDeploy_element {
    global String String_x;
    global cancelDeploy_element() {

    }
}
global class checkDeployStatus_element {
    global String asyncProcessId;
    global Boolean includeDetails;
    global checkDeployStatus_element() {

    }
}
global class checkRetrieveStatusResponse_element {
    global ints.MetadataService.RetrieveResult result;
    global checkRetrieveStatusResponse_element() {

    }
}
global class checkRetrieveStatus_element {
    global String asyncProcessId;
    global checkRetrieveStatus_element() {

    }
}
global class checkStatusResponse_element {
    global List<ints.MetadataService.AsyncResult> result;
    global checkStatusResponse_element() {

    }
}
global class checkStatus_element {
    global List<String> asyncProcessId;
    global checkStatus_element() {

    }
}
global class createMetadataResponse_element {
    global List<ints.MetadataService.SaveResult> result;
    global createMetadataResponse_element() {

    }
}
global class createMetadata_element {
    global List<ints.MetadataService.MetadataAPI> metadata;
    global createMetadata_element() {

    }
}
global class createResponse_element {
    global List<ints.MetadataService.AsyncResult> result;
    global createResponse_element() {

    }
}
global class create_element {
    global List<ints.MetadataService.MetadataAPI> metadata;
    global create_element() {

    }
}
global class deleteMetadataResponse_element {
    global List<ints.MetadataService.DeleteResult> result;
    global deleteMetadataResponse_element() {

    }
}
global class deleteMetadata_element {
    global List<String> fullNames;
    global String type_x;
    global deleteMetadata_element() {

    }
}
global class deleteResponse_element {
    global List<ints.MetadataService.AsyncResult> result;
    global deleteResponse_element() {

    }
}
global class delete_element {
    global List<ints.MetadataService.MetadataAPI> metadata;
    global delete_element() {

    }
}
global class deployResponse_element {
    global ints.MetadataService.AsyncResult result;
    global deployResponse_element() {

    }
}
global class describeMetadataResponse_element {
    global ints.MetadataService.DescribeMetadataResult result;
    global describeMetadataResponse_element() {

    }
}
global class describeMetadata_element {
    global Double asOfVersion;
    global describeMetadata_element() {

    }
}
global class listMetadataResponse_element {
    global List<ints.MetadataService.FileProperties> result;
    global listMetadataResponse_element() {

    }
}
global class listMetadata_element {
    global Double asOfVersion;
    global List<ints.MetadataService.ListMetadataQuery> queries;
    global listMetadata_element() {

    }
}
global class readAccountSettingsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadAccountSettingsResult result;
    global readAccountSettingsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexClassResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadApexClassResult result;
    global readApexClassResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexComponentResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadApexComponentResult result;
    global readApexComponentResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexPageResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadApexPageResult result;
    global readApexPageResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexTriggerResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadApexTriggerResult result;
    global readApexTriggerResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAuthProviderResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadAuthProviderResult result;
    global readAuthProviderResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readBaseSharingRuleResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadBaseSharingRuleResult result;
    global readBaseSharingRuleResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readBusinessProcessResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadBusinessProcessResult result;
    global readBusinessProcessResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCallCenterResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCallCenterResult result;
    global readCallCenterResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readChatterAnswersSettingsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadChatterAnswersSettingsResult result;
    global readChatterAnswersSettingsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCompactLayoutResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCompactLayoutResult result;
    global readCompactLayoutResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCompanySettingsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCompanySettingsResult result;
    global readCompanySettingsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readContractSettingsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadContractSettingsResult result;
    global readContractSettingsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomDataTypeResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCustomDataTypeResult result;
    global readCustomDataTypeResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomFieldResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCustomFieldResult result;
    global readCustomFieldResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomLabelResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCustomLabelResult result;
    global readCustomLabelResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomLabelsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCustomLabelsResult result;
    global readCustomLabelsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomObjectResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCustomObjectResult result;
    global readCustomObjectResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomTabResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadCustomTabResult result;
    global readCustomTabResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readDataCategoryGroupResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadDataCategoryGroupResult result;
    global readDataCategoryGroupResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readDocumentResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadDocumentResult result;
    global readDocumentResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEntitlementSettingsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadEntitlementSettingsResult result;
    global readEntitlementSettingsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEntitlementTemplateResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadEntitlementTemplateResult result;
    global readEntitlementTemplateResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readFlexiPageResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadFlexiPageResult result;
    global readFlexiPageResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readGroupResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadGroupResult result;
    global readGroupResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readHomePageComponentResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadHomePageComponentResult result;
    global readHomePageComponentResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readHomePageLayoutResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadHomePageLayoutResult result;
    global readHomePageLayoutResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readInstalledPackageResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadInstalledPackageResult result;
    global readInstalledPackageResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLetterheadResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadLetterheadResult result;
    global readLetterheadResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLiveChatButtonResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadLiveChatButtonResult result;
    global readLiveChatButtonResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readMetadataResponse_element {
    global ints.MetadataService.ReadResult result;
    global readMetadataResponse_element() {

    }
}
global class readMetadata_element {
    global List<String> fullNames;
    global String type_x;
    global readMetadata_element() {

    }
}
global class readMilestoneTypeResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadMilestoneTypeResult result;
    global readMilestoneTypeResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readNetworkResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadNetworkResult result;
    global readNetworkResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readOpportunitySettingsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadOpportunitySettingsResult result;
    global readOpportunitySettingsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readPicklistValueResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadPicklistValueResult result;
    global readPicklistValueResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readPostTemplateResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadPostTemplateResult result;
    global readPostTemplateResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readProductSettingsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadProductSettingsResult result;
    global readProductSettingsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readQueueResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadQueueResult result;
    global readQueueResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readQuoteSettingsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadQuoteSettingsResult result;
    global readQuoteSettingsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readRecordTypeResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadRecordTypeResult result;
    global readRecordTypeResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readRemoteSiteSettingResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadRemoteSiteSettingResult result;
    global readRemoteSiteSettingResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSamlSsoConfigResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadSamlSsoConfigResult result;
    global readSamlSsoConfigResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readScontrolResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadScontrolResult result;
    global readScontrolResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingReasonResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadSharingReasonResult result;
    global readSharingReasonResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingRulesResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadSharingRulesResult result;
    global readSharingRulesResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSiteDotComResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadSiteDotComResult result;
    global readSiteDotComResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readStaticResourceResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadStaticResourceResult result;
    global readStaticResourceResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSynonymDictionaryResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadSynonymDictionaryResult result;
    global readSynonymDictionaryResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readTranslationsResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadTranslationsResult result;
    global readTranslationsResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readValidationRuleResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadValidationRuleResult result;
    global readValidationRuleResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowActionResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadWorkflowActionResult result;
    global readWorkflowActionResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowFieldUpdateResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadWorkflowFieldUpdateResult result;
    global readWorkflowFieldUpdateResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowKnowledgePublishResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadWorkflowKnowledgePublishResult result;
    global readWorkflowKnowledgePublishResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowOutboundMessageResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadWorkflowOutboundMessageResult result;
    global readWorkflowOutboundMessageResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowSendResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadWorkflowSendResult result;
    global readWorkflowSendResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowTaskResponse_element implements ints.MetadataService.IReadResponseElement {
    global ints.MetadataService.ReadWorkflowTaskResult result;
    global readWorkflowTaskResponse_element() {

    }
    global ints.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class renameMetadataResponse_element {
    global ints.MetadataService.SaveResult result;
    global renameMetadataResponse_element() {

    }
}
global class renameMetadata_element {
    global String newFullName;
    global String oldFullName;
    global String type_x;
    global renameMetadata_element() {

    }
}
global class retrieveResponse_element {
    global ints.MetadataService.AsyncResult result;
    global retrieveResponse_element() {

    }
}
global class updateMetadataResponse_element {
    global List<ints.MetadataService.SaveResult> result;
    global updateMetadataResponse_element() {

    }
}
global class updateMetadata_element {
    global List<ints.MetadataService.MetadataAPI> metadata;
    global updateMetadata_element() {

    }
}
global class updateResponse_element {
    global List<ints.MetadataService.AsyncResult> result;
    global updateResponse_element() {

    }
}
global class update_element {
    global List<ints.MetadataService.UpdateMetadata> UpdateMetadata;
    global update_element() {

    }
}
}
