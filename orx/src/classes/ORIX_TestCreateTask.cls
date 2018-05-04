/**
 * @Created By : Mayank Bhardwaj
 * @Date : 09/02/2018
 * @Description : Builder class for Task
 **/
@IsTest @TestVisible
private class ORIX_TestCreateTask
{
   //Task name
   private String taskUserId;
   // Record id 
   private string taskrecordId; 
   // Record Subject
   private string taskSubject; 
   // Record status
   private string taskstatus;  
    
  
 @TestVisible   
 private ORIX_TestCreateTask()
 {
     
 }
 
  @TestVisible  
  private ORIX_TestCreateTask taskUserId(String taskUserId)
  {
      this.taskUserId =  taskUserId;
      return this;
  }  
    
  @TestVisible  
  private ORIX_TestCreateTask taskrecordId(string taskrecordId)
  {
      this.taskrecordId =  taskrecordId;
      return this;
  } 
    
  @TestVisible  
  private ORIX_TestCreateTask taskSubject(string taskSubject)
  {
      this.taskSubject =  taskSubject;
      return this;
  } 
    
  @TestVisible  
  private ORIX_TestCreateTask taskstatus(string taskstatus)
  {
      this.taskstatus =  taskstatus;
      return this;
  }    
   
    @TestVisible
    private List<Task> create(Integer count, Boolean isPersisted) {
        
        List<Task> lstTask = new List<Task>();
        
        for(Integer i = 0; i < count; i++) {
            
            Task objTask = new Task();
            
           /* if(this.taskType != null) {
                objTask.Type = this.taskType;
            } */
            
            if(this.taskUserId != null) {
                objTask.OwnerId  = this.taskUserId;
            }
            
            if(this.taskrecordId != null) {
                objTask.WhatId   = this.taskrecordId;
            }
            
            if(this.taskSubject  != null) {
                objTask.Subject   = this.taskSubject;
            }
            
            if(this.taskstatus != null) {
                objTask.Status   = this.taskstatus;
            }
     
             lstTask.add(objTask);
        }
        
        if(isPersisted) {
            insert lstTask;
        }
        
        return lstTask;
    }  
}