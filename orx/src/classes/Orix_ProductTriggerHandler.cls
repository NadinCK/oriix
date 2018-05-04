public class Orix_ProductTriggerHandler {
    
     public void onBeforeInsert(list<OpportunityLineItem> triggernew) {
        
        if(!triggernew.isEmpty()) {
            checkPrimaryProduct(triggernew,null);
        }
        
    }
    
    public void onBeforeUpdate(list<OpportunityLineItem> triggernew,map<id,OpportunityLineItem> triggerOldMap) {
        
        if(!triggernew.isEmpty()) {
            checkPrimaryProduct(triggernew,triggerOldMap);
        }
    }
    
    public void onBeforeDelete (list<OpportunityLineItem> triggerOld,map<id,OpportunityLineItem> triggerOldMap) {
    	if(!triggerOld.isEmpty()) {
    		updateProductCodeOnOpportunity(triggerOld,true);
    	}
    }
    
    public void onAfterInsert(list<OpportunityLineItem> triggerNew) {
    	if(!triggerNew.isEmpty()) {
    		updateProductCodeOnOpportunity(triggerNew,false);
    	}
    }
    
    public void onAfterUpdate(list<OpportunityLineItem> triggerNew) {
    	
    	if(!triggerNew.isEmpty()) {
    		updateProductCodeOnOpportunity(triggerNew,false);
    	}
    }
    
    private void updateProductCodeOnOpportunity(list<OpportunityLineItem> triggerNew,Boolean isDelete) {
    	
    	set<id> setOpptyId = new set<Id>();
    	set<id> setOppLineId = new set<Id>();
    	map<id,String> mapOppIdProdCode = new map<id,String>();
    	list<Opportunity> lstOpportunityToUpdate = new list<Opportunity>();
    	list<OpportunityLineItem> lstOppLIFetchData = new list<OpportunityLineItem>();
    	
    	for(OpportunityLineItem objOPLI : triggerNew) {
    		setOpptyId.add(objOPLI.OpportunityId);
    		setOppLineId.add(objOPLI.id);
    	}
    	if(!setOpptyId.IsEmpty()) {
    		string commaSeparateFields = CommonHandler.getSobjectFields('OpportunityLineItem');
    		commaSeparateFields = commaSeparateFields + ' from OpportunityLineItem where OpportunityId in:setOpptyId';
    		lstOppLIFetchData = Database.Query(commaSeparateFields);
    	}
    	/*else {
    		string commaSeparateFields = CommonHandler.getSobjectFields('OpportunityLineItem');
    		commaSeparateFields = commaSeparateFields + ' from OpportunityLineItem where OpportunityId in:setOpptyId';
    		commaSeparateFields = commaSeparateFields + ' and id NOT IN:setOppLineId';
    		lstOppLIFetchData = Database.Query(commaSeparateFields);
    	}*/
    	system.debug('****'+lstOppLIFetchData);
    	if(!lstOppLIFetchData.isEmpty()) {
    		for(OpportunityLineItem objOPLI : lstOppLIFetchData) {
    		
	    		if(objOPLI.OpportunityId != null && objOPLI.ProductCode != null) {
	    			
	    			if(mapOppIdProdCode != null && mapOppIdProdCode.get(objOPLI.OpportunityId) == null) {
	    				
	    				mapOppIdProdCode.put(objOPLI.OpportunityId,'');
	    				if(!isDelete){
	    					mapOppIdProdCode.put(objOPLI.OpportunityId,objOPLI.ProductCode);
	    				}
	    				
	    				if(!setOppLineId.contains(objOPLI.id) && isDelete)
	    				mapOppIdProdCode.put(objOPLI.OpportunityId,objOPLI.ProductCode);
	    			}
	    			else {
	    				string prodCode = mapOppIdProdCode.get(objOPLI.OpportunityId);
		    			prodCode = prodCode +';'+ objOPLI.ProductCode;
		    			mapOppIdProdCode.put(objOPLI.OpportunityId,prodCode);
	    			}
	    			
	    		}
	    	}
	    	system.debug('code***'+mapOppIdProdCode);
	    	if(mapOppIdProdCode != null && mapOppIdProdCode.size() > 0) {
	    		
	    		for(ID objOppid : mapOppIdProdCode.keyset()) {
	    			if(mapOppIdProdCode.get(objOppid) != null ) {
	    				Opportunity objOpp = new Opportunity(id=objOppid);
	    				objOpp.ORIX_Product_Mix__c = mapOppIdProdCode.get(objOppid);
	    				lstOpportunityToUpdate.add(objOpp);
	    			}
	    		}
	    		if(!lstOpportunityToUpdate.isEmpty())
	    			update lstOpportunityToUpdate;
	    	}
    	}
    	else {
    		
    	}
    }
    
    
    private void checkPrimaryProduct(list<OpportunityLineItem> triggerNew,map<id,OpportunityLineItem> triggerOldMap){
    
        set<ID> setOPLIID = new set<ID>();
        map<id,integer> mapOppHasPrimaryProd = new map<id,integer>();
        map<id,integer> mapIsPrimaryProd = new map<id,integer>();
        
        if(triggerOldMap == null) {
        	for(OpportunityLineItem objOPLI : triggerNew) {
        		if(mapIsPrimaryProd != null && mapIsPrimaryProd.get(objOPLI.OpportunityId) == null){
        			if(objOPLI.ORIX_Primary_Product__c) {
        				mapIsPrimaryProd.put(objOPLI.OpportunityId,1);
        				setOPLIID.add(objOPLI.OpportunityId);
        			}
        			
        		}
        		else{
        			if(objOPLI.ORIX_Primary_Product__c)
        			objOPLI.addError('You cannot mark two products as primary product.');
        		}
            	
        	}
        }
        //Commented due to logic handled by rollup summary field
        /*else {
        	for(OpportunityLineItem objOPLI : triggerNew) {
        		if(objOPLI.ORIX_Primary_Product__c && triggerOldMap.get(objOPLI.id) != null && 
        			triggerOldMap.get(objOPLI.id).ORIX_Primary_Product__c != true) {
        				setOPLIID.add(objOPLI.OpportunityId);
        			}
            			
        	}
        }
        
        if(!setOPLIID.isEmpty()){
            string commaSeparatedField = CommonHandler.getSobjectFields('OpportunityLineItem');
            commaSeparatedField = commaSeparatedField + ' from OpportunityLineItem where OpportunityId in:setOPLIID';
            commaSeparatedField = commaSeparatedField  + ' and ORIX_Primary_Product__c = true';
            list<OpportunityLineItem> lstOPLI = Database.query(commaSeparatedField);
            
            if(!lstOPLI.isEmpty()) {
                 for(OpportunityLineItem objOPLI : lstOPLI) {
                     if(mapOppHasPrimaryProd != null && mapOppHasPrimaryProd.get(objOPLI.OpportunityId) == null){
                         mapOppHasPrimaryProd.put(objOPLI.OpportunityId,1);
                     }
                 }   
            }
            if(mapOppHasPrimaryProd != null && mapOppHasPrimaryProd.size() > 0) {
                for(OpportunityLineItem objOPLI : triggerNew) {
                    if(mapOppHasPrimaryProd.get(objOPLI.OpportunityId) != null && mapOppHasPrimaryProd.get(objOPLI.OpportunityId) == 1 &&
                        objOPLI.ORIX_Primary_Product__c){
                        objOPLI.addError('You cannot mark this product as primary because this opportunity has already a primary product.');
                    }
                }
            }
        }*/
    }
}