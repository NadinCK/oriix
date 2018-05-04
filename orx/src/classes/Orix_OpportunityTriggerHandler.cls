/**
    @author:        Priyank Rajvanshi
    @date:          29/06/2017
    @group          Opportunity
    @group-content ../../ApexDocContent/Opportunity.htm   
    @description:   This trigger class will handle all operations of opportunity.
 */
public without sharing class Orix_OpportunityTriggerHandler {

    public void onBeforeInsert(list<Opportunity> triggernew) {
        
        if(!triggernew.isEmpty()) {
            tagKpiOnOpportunity(triggernew);
            //opportunitySharingOfInactiveOwners(triggernew);
            //markTopOpportunities(triggernew, null);
            
        }
        
    }
    
    public void onAfterInsert(list<Opportunity> triggerNew) {
        
    }
    
    public void onBeforeUpdate(list<Opportunity> triggernew,map<id,Opportunity> triggerOldMap) {
        
        if(!triggernew.isEmpty()) {
            tagKpiOnOpportunity(triggernew);
            //opportunitySharingOfInactiveOwners(triggernew);
           // markTopOpportunities(triggernew, triggerOldMap);
            

        }
    }
    
    public void onAfterUpdate(list<Opportunity> triggernew,map<id,Opportunity> triggerOldMap) {
        if(!triggernew.isEmpty()) {
            countOpportunityAndSumFleet(triggernew,triggerOldMap);
        }
    }
    
    
    private void countOpportunityAndSumFleet(list<Opportunity> triggerNew, map<id,Opportunity> triggerOldMap) {
        
        if(!triggernew.isEmpty() && triggerOldMap != null) {
            
            set<Id> setKPI = new set<Id>();
            map<id,decimal> mapSumOfFleet = new map<id,decimal>();
            map<id,decimal> mapCountofOppty = new map<id,decimal>();
            
            for(Opportunity objOpp : triggerNew) {
                 
                if(String.isNotEmpty(objOpp.ORIX_Stage_Category__c) && triggerOldMap.get(objOpp.id) != null && objOpp.ORIX_KPI__c != null && 
                    ((objOpp.ORIX_Stage_Category__c == 'Cumulative Buying Platform' && 
                    triggerOldMap.get(objOpp.id).ORIX_Stage_Category__c != objOpp.ORIX_Stage_Category__c) || 
                    (triggerOldMap.get(objOpp.id).ORIX_Stage_Category__c == 'Cumulative Buying Platform' && 
                    objOpp.ORIX_Stage_Category__c != 'Cumulative Buying Platform'))){
                        
                        setKPI.add(objOpp.ORIX_KPI__c);
                    }
            }
            system.debug('setKPI***'+setKPI);
            if(!setKPI.isEmpty()) {
                
                string commaSeparatedField = CommonHandler.getSobjectFields('Opportunity');
                
                string stageName = 'Cumulative Buying Platform';
                
                commaSeparatedField = commaSeparatedField + ' from Opportunity where ORIX_KPI__c in:setKPI';
                
                commaSeparatedField = commaSeparatedField  + ' and ORIX_Stage_Category__c =:stageName';
                
                list<Opportunity> lstAllOpportunity = Database.query(commaSeparatedField);
                
                system.debug('count***'+lstAllOpportunity.size());
                if(!lstAllOpportunity.isEmpty()) {
                    for(Opportunity objOppData : lstAllOpportunity) {
                        
                        //Sum of total fleets of opportunity
                        if(mapSumOfFleet != null && mapSumOfFleet.get(objOppData.ORIX_KPI__c) == null) {
                            mapSumOfFleet.put(objOppData.ORIX_KPI__c,0);
                        }
                        decimal i = mapSumOfFleet.get(objOppData.ORIX_KPI__c);
                        i = i + objOppData.ORIX_Fleet_Size__c;
                        mapSumOfFleet.put(objOppData.ORIX_KPI__c,i);
                        
                        //sum of opportunity
                        if(mapCountofOppty != null && mapCountofOppty.get(objOppData.ORIX_KPI__c) == null) {
                            
                            mapCountofOppty.put(objOppData.ORIX_KPI__c,0);
                        }
                        decimal j = mapCountofOppty.get(objOppData.ORIX_KPI__c);
                        j = j + 1;
                        mapCountofOppty.put(objOppData.ORIX_KPI__c,j);
                    }
                    system.debug(mapCountofOppty+'mapCountofOppty***');
                    list<ORIX_KPI__c> lstKPIToUpdate = new list<ORIX_KPI__c>();
                    
                    map<id,ORIX_KPI__c> mapKPIUpdate = new map<id,ORIX_KPI__c>();
                    
                    if(mapCountofOppty != null && mapCountofOppty.size() > 0) {
                        
                        for(Id idKPI : mapCountofOppty.keyset()) {
                            if(mapCountofOppty.get(idKPI) != null && mapCountofOppty.get(idKPI) !=0) {
                                
                                if(mapKPIUpdate != null && mapKPIUpdate.get(idKPI) == null) {
                                
                                    ORIX_KPI__c objKPI = new ORIX_KPI__c(id=idKPI);
                                    
                                    objKPI.ORIX_Won_Opportunities_Actual__c = mapCountofOppty.get(idKPI);
                                    
                                    mapKPIUpdate.put(idKPI,objKPI);
                                }
                            }
                        }
                    }
                    if(mapSumOfFleet != null && mapSumOfFleet.size() > 0) {
                        
                        for(Id idKPI : mapSumOfFleet.keyset()) {
                            
                            if(mapKPIUpdate != null && mapKPIUpdate.get(idKPI)== null) {
                                
                                ORIX_KPI__c objKPI = new ORIX_KPI__c(id=idKPI);
                                    
                                objKPI.ORIX_Total_Fleet_Size_Actual__c = mapSumOfFleet.get(idKPI);
                                
                                mapKPIUpdate.put(idKPI,objKPI);
                            }
                            else {
                                ORIX_KPI__c objKPI = mapKPIUpdate.get(idKPI);
                                    
                                objKPI.ORIX_Total_Fleet_Size_Actual__c = mapSumOfFleet.get(idKPI);
                                
                                mapKPIUpdate.put(idKPI,objKPI);
                            }
                        }
                        if(mapKPIUpdate != null && mapKPIUpdate.size() > 0) {
                            
                            for(Id idKPI : mapKPIUpdate.keyset()) {
                                lstKPIToUpdate.add(mapKPIUpdate.get(idKPI));
                            }
                            if(!lstKPIToUpdate.isEmpty()) {
                                update lstKPIToUpdate;
                            }
                        }
                    }
                }
                else {
                    list<ORIX_KPI__c> lstKPIToUpdate = new list<ORIX_KPI__c>();
                    for(Id idKPI: setKPI) {
                        ORIX_KPI__c objKPI = new ORIX_KPI__c(id=idKPI);
                                    
                        objKPI.ORIX_Total_Fleet_Size_Actual__c = 0;
                        objKPI.ORIX_Won_Opportunities_Actual__c = 0;
                        
                        lstKPIToUpdate.add(objKPI);
                    }
                    if(!lstKPIToUpdate.isEmpty()) {
                        update lstKPIToUpdate;
                    }
                }
            }
        }
    }
    
    /**
    * @description This method will be used to tag KPI record on Opportunity according to sales person.
                   Most recent KPI record of that year will be tagged on Opportunity.
    * @param triggernew list of new opportunities records will be tagged.
    * @return void
    * 
    */
    private void tagKpiOnOpportunity(list<Opportunity> triggernew) {
        
        set<id> setOwnerId = new set<id>();
        list<ORIX_KPI__c> lstKPIData = new list<ORIX_KPI__c>();
        string commaSeparatedField = '';
        map<id,list<ORIX_KPI__c>> mapSalesPersonKPI = new map<id,list<ORIX_KPI__c>>();
        
        if(!triggernew.isEmpty()) {
            
            for(Opportunity objOpp : triggernew) {
                
                if(objOpp.ownerid != null) {
                    setOwnerId.add(objOpp.ownerid);
                }
            }
            
            if(!setOwnerId.isEmpty()) {
                commaSeparatedField = CommonHandler.getSobjectFields('ORIX_KPI__c');
                
                commaSeparatedField = commaSeparatedField + ' from ORIX_KPI__c where ORIX_Salesperson__c in:setOwnerId';
                commaSeparatedField = commaSeparatedField + ' and ORIX_Start_Date__c < TODAY and ORIX_End_Date__c > TODAY ORDER BY createddate DESC limit 49999';
                system.debug('commaSeparatedField***'+commaSeparatedField);
                lstKPIData = Database.query(commaSeparatedField);
                
                if(!lstKPIData.isEmpty()) {
                    for(ORIX_KPI__c objKPI : lstKPIData) {
                        
                        if(mapSalesPersonKPI != null && mapSalesPersonKPI.get(objKPI.ORIX_Salesperson__c) == null){
                            mapSalesPersonKPI.put(objKPI.ORIX_Salesperson__c,new list<ORIX_KPI__c>());
                          }
                            
                            list<ORIX_KPI__c> lstTempKPI = mapSalesPersonKPI.get(objKPI.ORIX_Salesperson__c);
                            lstTempKPI.add(objKPI);
                            mapSalesPersonKPI.put(objKPI.ORIX_Salesperson__c,lstTempKPI);
                    }
                }
                if(mapSalesPersonKPI != null && mapSalesPersonKPI.size() > 0) {
                    for(Opportunity objOpp : triggernew) {
                
                        if(objOpp.ownerid != null && mapSalesPersonKPI.get(objOpp.ownerid) != null) {
                            list<ORIX_KPI__c> lstTempKPI = mapSalesPersonKPI.get(objOpp.ownerid);
                            if(!lstTempKPI.isEmpty()) {
                                objOpp.ORIX_KPI__c = lstTempKPI[0].id;
                            }
                        }
                    }
                }
            }
        }
    }
    

}