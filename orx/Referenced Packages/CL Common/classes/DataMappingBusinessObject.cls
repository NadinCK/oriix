/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DataMappingBusinessObject {
    global DataMappingBusinessObject() {

    }
    global DataMappingBusinessObject(String headerName, String sourceObjectAPIName, String targetObjectAPIName, String relationshipfieldAPIName, String processingIdentifierFieldName, String headerSFId, List<clcommon.DataMappingBusinessObject.MappingGroupDesc> groups, String sourceCriteriaStr) {

    }
    global String getHeaderId() {
        return null;
    }
    global String getHeaderName() {
        return null;
    }
    global String getProcessingIdentifierField() {
        return null;
    }
    global String getRelationshipfieldName() {
        return null;
    }
    global String getSourceCriteria() {
        return null;
    }
    global String getSourceObjectName() {
        return null;
    }
    global String getTargetObjectName() {
        return null;
    }
    global void setGroups(List<clcommon.DataMappingBusinessObject.MappingGroupDesc> groups) {

    }
    global void setHeaderId(String id) {

    }
    global void setHeaderName(String headerName) {

    }
    global void setProcessingIdentifierField(String processingIdentifierFieldName) {

    }
    global void setRelationshipfieldName(String relationshipfieldAPIName) {

    }
    global void setSourceCriteria(String sourceCriteriaStr) {

    }
    global void setSourceObjectName(String sourceObjectAPIName) {

    }
    global void setTargetObjectName(String targetObjectAPIName) {

    }
global class FieldMappingDesc {
    global FieldMappingDesc(String fieldMappingName, String sourceFieldAPIName, String targetFieldAPIName, Id fieldMappingSFId, String defaultValueDataType, String defaultValue) {

    }
    global String getDefaultValue() {
        return null;
    }
    global String getFieldMappingId() {
        return null;
    }
    global String getFieldMappingName() {
        return null;
    }
    global String getSourceFieldName() {
        return null;
    }
    global void setDefaultValue(String defaultValue) {

    }
    global void setFieldMappingId(String id) {

    }
    global void setFieldMappingName(String fieldMappingName) {

    }
    global void setSourceFieldName(String sourceFieldAPIName) {

    }
}
global class MappingGroupDesc {
    global MappingGroupDesc() {

    }
    global MappingGroupDesc(String groupName, Id groupSFId, List<clcommon.DataMappingBusinessObject.FieldMappingDesc> fieldMappings) {

    }
    global List<clcommon.DataMappingBusinessObject.FieldMappingDesc> getFieldMappings() {
        return null;
    }
    global String getGroupId() {
        return null;
    }
    global String getGroupName() {
        return null;
    }
    global void setFieldMappings(List<clcommon.DataMappingBusinessObject.FieldMappingDesc> fieldMappings) {

    }
    global void setGroupId(String id) {

    }
    global void setGroupName(String groupName) {

    }
}
}
