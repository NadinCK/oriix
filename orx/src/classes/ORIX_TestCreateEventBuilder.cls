/**
 * @Created By : Mayank Bhardwaj
 * @Date : 09/02/2018
 * @Description : Builder class for Event
 **/
@IsTest @TestVisible
private class ORIX_TestCreateEventBuilder
{
   //Subject
   private String Subject;
   // Agenda
   private string Agenda; 
   // StartDateTime
   private DateTime StartDateTime; 
   // EndDateTime
   private DateTime EndDateTime;  
    
  
 @TestVisible   
 private ORIX_TestCreateEventBuilder()
 {
     
 }
 
  @TestVisible  
  private ORIX_TestCreateEventBuilder Subject (String Subject )
  {
      this.Subject  =  Subject ;
      return this;
  }  
    
  @TestVisible  
  private ORIX_TestCreateEventBuilder Agenda (string Agenda )
  {
      this.Agenda  =  Agenda ;
      return this;
  } 
    
  @TestVisible  
  private ORIX_TestCreateEventBuilder StartDateTime (DateTime StartDateTime )
  {
      this.StartDateTime  =  StartDateTime ;
      return this;
  } 
    
  @TestVisible  
  private ORIX_TestCreateEventBuilder EndDateTime(DateTime EndDateTime)
  {
      this.EndDateTime =  EndDateTime;
      return this;
  }    
   
    @TestVisible
    private List<Event> create(Integer count, Boolean isPersisted) {
        
        List<Event> lstEvent = new List<Event>();
        
        for(Integer i = 0; i < count; i++) {
            
            Event objEvent = new Event();
           
            if(this.Subject  != null) {
                objEvent.Subject   = this.Subject ;
            }
            
            if(this.Agenda  != null) {
                objEvent.ORIX_Agenda__c   = this.Agenda ;
            }
            
            if(this.StartDateTime   != null) {
                objEvent.StartDateTime    = this.StartDateTime ;
            }
            
            if(this.EndDateTime != null) {
                objEvent.EndDateTime   = this.EndDateTime;
            }
     
             lstEvent.add(objEvent);
        }
        
        if(isPersisted) {
            insert lstEvent;
        }
        
        return lstEvent;
    }  
}