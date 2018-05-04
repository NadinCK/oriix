/**
 * @auther      : Mayank Bhardwaj
 * @date        : 13/02/2017
 * @description : This Batch class is used to insert case when Asset's contract Expiry date is 4 months after.
 **/
global class ORIX_BatchCalculatefourMonthData implements Database.Batchable<sObject>, Database.Stateful{
   
    public static Group queueGrp = [Select id,Name from Group  Where Type = 'Queue' AND 
                                               Name =: 'Novated Specialist Queue'];
    public Database.QueryLocator start(Database.BatchableContext bc)
    {   
       // Get the Asset record whose Contract Expiry date is four months after from today
         return Database.getQueryLocator([select Id,Name,AccountId,ContactId,ORIX_Contract_Expiry_Date__c,
                                                 ORIX_Prior2MonthsExpirayDate__c,(Select id,Status from Cases)
                                                 from Asset where ORIX_Contract_Expiry_Date__c =: date.today().addMonths(4)]);
    }
   
    global void execute(Database.BatchableContext bc,List<Asset> records)
    {
        // List of Case
        List<Case> lstCase = new List<Case>();
        
        // fatch queue where Name is 'Novated Specialist Queue'.
       
        if(records.size() > 0)
        {
          for(Asset obj : records)
          {    

             if(obj.Cases.isEmpty())
             {
                 system.debug('test');
                Case objCase = new Case();
                 objCase.AssetId = obj.id;  
                 objCase.AccountId = obj.AccountId;
                 objCase.ContactId = obj.ContactId;
                 objCase.ORIX_2_Month_Prior_Expiry_Date__c = obj.ORIX_Prior2MonthsExpirayDate__c;
                 objCase.ORIX_Due_Date__c = obj.ORIX_Contract_Expiry_Date__c;
                 objCase.OwnerId = queueGrp.id;
                 objCase.Status = 'New';
                 objCase.Subject = 'End-of-Lease Confirmation';
                 // Add case record in list
                 lstCase.add(objCase);  
             }
             
          }
         
          // Insert the list of Case   
          insert lstCase;  
        }
    }
    
    global void finish(Database.BatchableContext bc)
    {
        
    }
}