/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DocumentTreeNode implements System.Comparable {
    global String atchParentId;
    global List<clcommon.DocumentTreeNode.AttachmentNode> attachments;
    global List<clcommon.DocumentTreeNode> children;
    global String id;
    global String name;
    global clcommon__Document_Category__c parent;
    global DocumentTreeNode(clcommon__Document_Category__c parent, List<clcommon.DocumentTreeNode> children) {

    }
    global Integer compareTo(Object compareTo) {
        return null;
    }
global class AttachmentNode {
    global clcommon__Category_Attachment_Association__c association;
    global String id;
    global String name;
    global AttachmentNode(clcommon__Category_Attachment_Association__c atch) {

    }
}
}
