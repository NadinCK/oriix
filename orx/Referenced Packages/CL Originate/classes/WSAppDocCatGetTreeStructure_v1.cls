/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/v1/applicationDocumentCategories/getTreeStucture')
global class WSAppDocCatGetTreeStructure_v1 {
    global WSAppDocCatGetTreeStructure_v1() {

    }
    @HttpGet
    global static genesis.Response getTreeStructure() {
        return null;
    }
global class ApplicationDocumentTreeStructure extends genesis.CustomResponse {
    global genesis.TransactionRoomActionHelper.DisplayAppDocumentCategory applicationDocumentCategory;
    global String applicationId;
    global ApplicationDocumentTreeStructure() {

    }
}
}
