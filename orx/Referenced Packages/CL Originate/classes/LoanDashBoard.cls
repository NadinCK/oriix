/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class LoanDashBoard {
    global genesis__Applications__c application {
        get;
        set;
    }
    global LoanDashBoard(ApexPages.StandardController controller) {

    }
    @RemoteAction
    global static String getDepartmentTaskList(String applicationId) {
        return null;
    }
    webService static String getOverallStatus(String applicationId) {
        return null;
    }
    @RemoteAction
    global static String getProgressbarValue(String applicationId) {
        return null;
    }
    webService static String rejectApplication(String applicationId, String comments) {
        return null;
    }
    webService static String showSubmitToNxtDeptBtn(String applicationId) {
        return null;
    }
    webService static String submitToNextDepartment(String applicationId) {
        return null;
    }
    webService static String submitToNxtDepartment(String applicationId, String comments) {
        return null;
    }
    @RemoteAction
    global static String updateTaskList(List<String> taskList) {
        return null;
    }
}
