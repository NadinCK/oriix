/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ProcessEnforcementManager {
    global Map<Id,Map<String,Map<Date,clcommon.ProcessEnforcementConstraint>>> GetValueOfConstraintAttributesForAccountOrContactIds(Map<Id,Map<String,List<Date>>> acctOrCntctId2AttributeDateMap, String namespace) {
        return null;
    }
    @Deprecated
    global Map<Id,List<clcommon.ProcessEnforcementConstraint>> GetValueOfConstraintAttributesForAccounts(List<Account> acctList, Set<String> constraintAttributeList, String nameSpace) {
        return null;
    }
    @Deprecated
    global Map<Id,List<clcommon.ProcessEnforcementConstraint>> GetValueOfConstraintAttributesForContacts(List<Contact> cntctList, Set<String> constraintAttributeList, String nameSpace) {
        return null;
    }
    global static clcommon.ProcessEnforcementManager getInstance() {
        return null;
    }
global enum ActionExecuteEventEnum {Apply, Expiry, Revoke, Validate}
global enum ActionResultEnum {FAILURE, SUCCESS}
}
