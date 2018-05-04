/**
* @author Priyank
* @date 11/07/2017
*
* @group KPI
* @group-content ../../ApexDocContent/KPI.htm
*
* @description Test Class to make KPI test data
**/
@IsTest @TestVisible
private class ORIXTestDataKPIBuilder {

    //start date
    private date startDate;
    //end date
    private date endDate;
    
    
    @TestVisible
    private ORIXTestDataKPIBuilder() {
        
        
    }
    
    @TestVisible
    private ORIXTestDataKPIBuilder startDate(Date startDate) {
        
        this.startDate = startDate;
        return this;
    }
    
    @TestVisible
    private ORIXTestDataKPIBuilder endDate(Date endDate) {
        this.endDate = endDate;
        return this;
    }
    
    @TestVisible
   private List<ORIX_KPI__c> create(Integer count, Boolean persisted) {
       // List Intilization 
       List<ORIX_KPI__c> resultKPIList = new List<ORIX_KPI__c>();
       /**
            Loop work of how many ORIX_KPI__c to create
       **/
       for (Integer i = 0; i < count; i++) {
           // Intilization Ojbect
           ORIX_KPI__c kpiObject = new ORIX_KPI__c(
                    
           );
           
                      
           //set closed date
           if(this.startDate != null){
                kpiObject.ORIX_Start_Date__c = this.startDate;
           }
           //set stagename
           if(this.endDate != null) {
                kpiObject.ORIX_End_Date__c = this.endDate;
           }
           kpiObject.ORIX_Salesperson__c = userInfo.getUserId();
           kpiObject.ORIX_Won_Opportunities_Target__c = 0;
           kpiObject.ORIX_Total_Fleet_Size_Target__c = 0;
           // add to list
           resultKPIList.add(kpiObject);
       }
       // insert command
       if (persisted) insert resultKPIList;
       // return  value
       return resultKPIList;
   }
}