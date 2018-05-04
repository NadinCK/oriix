/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class PortalActions {
    global PortalActions() {

    }
    @RemoteAction
    global static clcommon.Response confirmPassword(String oldPassword, String newPassword, String verifyPassword) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response deleteRecord(String qToken, String qStructureName, String qParams) {
        return null;
    }
    global static List<clcommon__Disclosure_Acknowledgement__c> generateAcknowledgements(List<String> disclosureDefs, List<String> associateTo, Boolean commitRecords) {
        return null;
    }
    @RemoteAction
    global static String getCommunityPrefix() {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getCssConfiguration(String token, String name) {
        return null;
    }
    global static clcommon.Response getCustomRemoteActionResponse(List<SObject> objs) {
        return null;
    }
    global static clcommon.Response getCustomRemoteActionResponse(List<clcommon.PortalCustomRemoteActionRecord> objs) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getDisclosures(String token, List<String> disclosureNames) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getJSONNavigation(String token, String qStructureName) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getJSONStructure(String token, String qStructureName) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getSearchResult(String qToken, String qPrimaryTableName, String qQueryTables, String qSearchTerm, String qSearchStructureName) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getSearchSuggestions(String qToken, String qQueryTables, String qSearchTerm) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getSettings(String qToken, String qStructureName) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getStaticContent(String token, List<String> names) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getUserDocumentCategories(String token, Map<String,String> values) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getUserInfo(String qToken) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response getUserLoanDocumentCategories(String token, Map<String,String> values) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response invokeAction(String token, Map<String,String> values) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response invokeCustomAction(String token, String classname, String nsPrefix, Map<String,Object> params) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response invokeCustomRemoteAction(String token, String classname, String nsPrefix, String qStructureName, List<String> disclosureNames, Map<String,Object> params) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response linkAttachment(String token, Map<String,String> values) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response login(String username, String password) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response logout() {
        return null;
    }
    @RemoteAction
    global static clcommon.Response mockInvokeCustomRemoteAction(String token, String classname, String nsPrefix, String structure, List<String> disclosureNames, Map<String,Object> params, String responseDataFormat, String responseStatus) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response mockNewRecord(String token, String structure, String responseStatus) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response mockQueryRelation(String token, String structure, String fieldId, Map<String,Object> params, Map<String,List<Object>> listValueParams, Integer numberOfReturnedRecords, String responseStatus) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response mockQuery(String token, String structure, Map<String,Object> params, Map<String,List<Object>> listValueParams, Integer numberOfReturnedRecords, String responseStatus) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response mockUpsertMultipleRecords(String token, String structure, List<Map<String,Object>> params, String responseStatus) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response newRecord(String qToken, String qStructureName) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response newRecordWithDefaults(String qToken, String qStructureName, Map<String,Object> defaults) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response queryMany(String qToken, String qRecordIdsInJSONStringArray, String qStructureName) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response queryManyWithWhereClauseParams(String qToken, String qRecordIdsInJSONStringArray, String qStructureName, Map<String,Object> params) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response queryOne(String qToken, String qRecordId, String qStructureName) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response queryOneWithWhereClauseParams(String qToken, String qRecordId, String qStructureName, Map<String,Object> params) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response queryRelation(String qToken, String qStructureName, String qFieldId, Map<String,Object> params, Map<String,List<Object>> listValueParams) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response query(String qToken, String qStructureName, Map<String,Object> params, Map<String,List<Object>> listValueParams) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response replaceAttachment(String token, Map<String,String> values) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response resetPassword(Map<String,String> values) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response savePortalConfiguration(String token, String navigationStructure, String cssConfiguration, List<String> componentStructureList, List<String> staticContentList) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response setPassword(String newPassword, String verifyPassword) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response unlinkAttachment(String token, Map<String,String> values) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response upsertMultipleRecords(String qToken, String qStructureName, List<Map<String,Object>> qParams) {
        return null;
    }
    @RemoteAction
    global static clcommon.Response upsertOneRecord(String qToken, String qStructureName, Map<String,Object> qParams) {
        return null;
    }
    @Deprecated
    @RemoteAction
    global static clcommon.Response upsertRecord(String qToken, String qStructureName, String qParams) {
        return null;
    }
    @Deprecated
    @RemoteAction
    global static clcommon.Response upsertRecords(String qToken, String qStructureName, String qParams) {
        return null;
    }
}
