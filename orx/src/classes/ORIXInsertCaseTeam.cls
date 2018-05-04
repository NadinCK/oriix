/**
    @author:        Priyank Rajvanshi
    @date:          14/11/2017
    @group          Asset
    @group-content ../../ApexDocContent/Asset.htm   
    @description:   This class will be used to insert case team according to role of case owner..
 */
public with sharing class ORIXInsertCaseTeam {

    @InvocableMethod(label='Insert Case Team' description='It will insert case team according to case owner role')
    public static void insertCaseTeam(List<ID> caseIds) {
        //this set is used to store case owner id
        set<Id> setOwnerId = new set<Id>();
        //this set is used to store owner role 
        set<string> setRoleName = new set<string>();
        //this set is used to store case id
        set<Id> setCaseId = new set<Id>();
        
        //fetching case records on the basis of case ids which are passed from process builder.
        list<Case> lstCaseFetch = [select id,ownerId,Owner.UserRole.Name from Case where id in:caseIds];
        
        //if condition checking that list is not null and size is greater than 0
        if(lstCaseFetch != null && lstCaseFetch.size() > 0) {
            //iterating a loop over case records
            for(Case objCase : lstCaseFetch) {
            	//checking if case owner role is null or not
                if(objCase.Owner.Userroleid != null) {
                	// storing data in set
                    setOwnerId.add(objCase.Ownerid);
                    setRoleName.add(objCase.Owner.UserRole.Name);
                    setCaseId.add(objCase.Id);
                }
                
            }
            
            //checking all set are null or not.
            if(setOwnerId != null && setOwnerId.size() >0 && setRoleName != null && setRoleName.size() > 0) {
                //Checking if owner is not already a case team member
                //initialized a list of case team member to fetch existing data
                list<CaseTeamMember> lstCaseTeamData = new list<CaseTeamMember>();
                //initialized a map to store case id on key part & case team member id at value part
                map<id,set<Id>> mapCaseTeamMember = new map<id,set<Id>>();
                
                //fetching case team data 
                lstCaseTeamData = [SELECT id,MemberId,parentId from CaseTeamMember where MemberId in:setOwnerId
                                    AND ParentId in:setCaseId];
               
                 
                //checking case team member data exist or not.
                if(lstCaseTeamData != null && lstCaseTeamData.size() > 0) {
                    for(CaseTeamMember OBJCTM : lstCaseTeamData ) 
                     { 
                       
                        if(mapCaseTeamMember.get(objCTM.parentid)== null) {
                            mapCaseTeamMember.put(objCTM.ParentId,new set<id>{objCTM.memberId});
                        }
                        else {
                            set<Id> setmemberid = mapCaseTeamMember.get(objCTM.parentid);
                            setmemberid.add(objCTM.memberId);
                            mapCaseTeamMember.put(objCTM.ParentId,setmemberid);
                        }
                    }
                }                    
                //initialized list of case team role
                list<CaseTeamRole> lstCTR = new list<CaseTeamRole>();
                //fetching case team role on the basis of case owner role
                 lstCTR = [select id,Name from CaseTeamRole where Name in: setRoleName];
                 map<string,Id> mapCTR = new map<string,id>();
                 
                 
                list<CaseTeamMember> lstCTM = new list<CaseTeamMember>();
                if(lstCTR != null && lstCTR.size() > 0) {
                    for(CaseTeamRole objCTR : lstCTR){
                        if(mapCTR != null && mapCTR.get(objCTR.name)== null) {
                            mapCTR.put(objCTR.Name,objCTR.id);
                        }
                    }
                    for(Case objCase : lstCaseFetch) {
                        if(mapCaseTeamMember != null  && mapCaseTeamMember.get(objCase.id) != null && mapCTR != null && 
                            mapCTR.get(objCase.Owner.UserRole.Name) != null) {
                            set<id> stOwnerid = mapCaseTeamMember.get(objCase.id);
                            if(!stOwnerid.contains(objCase.ownerId)) {
                            	//passing data to addCaseTeam method and this method will return instance of case team member
                                CaseTeamMember objCTM = ORIXInsertCaseTeam.addCaseTeam(objCase,mapCTR);                                
                                lstCTM.add(objCTM);
                            }
                            
                        }
                        else {
                                //passing data to addCaseTeam method and this method will return instance of case team member
                                CaseTeamMember objCTM = ORIXInsertCaseTeam.addCaseTeam(objCase,mapCTR);                                
                                lstCTM.add(objCTM);
                        }
                    }
                    
                    try{
                        insert lstCTM;
                    }
                    catch(DmlException e) {
                      
                  }
                }                
            }           
        }
        
    }
    
    /**
    @author:        Priyank Rajvanshi
    @date:          17/01/2018
    @group          Asset
    @group-content ../../ApexDocContent/Asset.htm   
    @description:   This method is used to handle case team member data..
 	*/
 	public static CaseTeamMember addCaseTeam(Case objCase,map<string,Id> mapCTR) {
 		//initialized case team member record
 		CaseTeamMember objCTM = new CaseTeamMember();
        objCTM.ParentId = objCase.id;
        objCTM.MemberId = objCase.ownerId;
        objCTM.TeamRoleId = mapCTR.get(objCase.Owner.UserRole.Name);
        return objCTM;
 	}
}