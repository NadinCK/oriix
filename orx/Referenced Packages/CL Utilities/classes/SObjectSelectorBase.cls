/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class SObjectSelectorBase implements mfiflexUtil.SObjectSelector {
    global SObjectSelectorBase(Schema.SObjectType sObjectType, List<String> fieldList) {

    }
    global mfiflexUtil.SObjectSelectorBase.QueryBuilder createObjectCacheInstance() {
        return null;
    }
    global List<SObject> getRecordsById(Set<Id> idSet) {
        return null;
    }
    global List<String> getSObjectFieldList() {
        return null;
    }
    global Schema.SObjectType getSObjectType() {
        return null;
    }
    global mfiflexUtil.SObjectSelectorBase.QueryBuilder selectRelationship(String relationshipName, mfiflexUtil.SObjectSelectorBase relationshipSelector) {
        return null;
    }
global class QueryBuilder extends mfiflexUtil.SObjectSelectorBase.ObjectCacheWrapper {
    global mfiflexUtil.SObjectSelectorBase.QueryBuilder addNamedParameter(String key, Object val) {
        return null;
    }
    global mfiflexUtil.SObjectSelectorBase.QueryBuilder addRelationship(mfiflexUtil.SObjectSelectorBase.QueryBuilder relationship) {
        return null;
    }
    global String getQuery() {
        return null;
    }
    global Map<Id,SObject> getRecordsMap() {
        return null;
    }
    global Map<Object,List<SObject>> getRecordsMap(String fieldAsKey) {
        return null;
    }
    global List<SObject> getRecords() {
        return null;
    }
    global mfiflexUtil.SObjectSelectorBase.QueryBuilder setLimitClause(String limitClause) {
        return null;
    }
    global mfiflexUtil.SObjectSelectorBase.QueryBuilder setOrderClause(String orderClause) {
        return null;
    }
    global mfiflexUtil.SObjectSelectorBase.QueryBuilder setWhereClause(String whereClause) {
        return null;
    }
}
}
