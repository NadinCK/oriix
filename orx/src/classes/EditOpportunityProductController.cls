public with sharing class EditOpportunityProductController {
    
    @AuraEnabled
    public static Map<String, String> getUserNames(List<String> lstUserId) {
        
        Map<String, String> userNameMap = new Map<String, String>();
        Set<String> userIdSet = new Set<String>();
        for(String userId : lstUserId) {
            userIdSet.add(userId);
        }
        
        List<User> userLst = [Select Id, Name from User Where Id IN:userIdSet];
        
        for(User userObj : userLst) {
            userNameMap.put(userObj.Id, userObj.Name);
        }
        return userNameMap;
    }
    
    @AuraEnabled
    public static OpportunityLineItem getProduct(Id oppLineItemId) {
    	system.debug('oppLineItemId--'+oppLineItemId);
        if(oppLineItemId != null) {
            string strOPLIFields = commonHandler.getSobjectFields('OpportunityLineItem');
            list<OpportunityLineItem> lstOPLI =new list<OpportunityLineItem>();
            strOPLIFields +=  ',product2.ProductCode,Opportunity.Account.Name,Opportunity.Name,product2.name from OpportunityLineItem where id=:oppLineItemId';
            lstOPLI = database.query(strOPLIFields);
            if(!lstOPLI.isEmpty() && lstOPLI[0] != null && lstOPLI[0].Product2Id != null) {
            	return lstOPLI[0];
            }
    	}
        return null;
    }
    
	@AuraEnabled
    public static void updateOppLI(OpportunityLineItem objOPLI) {
    	update objOPLI;
    }
    
}