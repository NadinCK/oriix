/**@Developer Name : Priyank
 *Date : 11-07-17
 * Description: creating account test data
 */
@IsTest @TestVisible
private class ORIX_TestDataAccountBuilder {
    
    //   Account Name
   private String name;
   //ABN value
   private String abn; 
   
   /**
    * @description 
    * @param
    * @return 
    */
    @TestVisible
   private ORIX_TestDataAccountBuilder() {
       
   }
   
   /**
    * @description It will set Account Name
    * @param name Account Name.
    * @return the Returns Account Name
    */
   @TestVisible
   private ORIX_TestDataAccountBuilder name(String name) {
       // Set abn name
       this.name = name;
       return this;
   }
   
   /**
    * @description It will set Account ABN
    * @param name Account ABN.
    * @return the Returns Account ABN
    */
   @TestVisible
   private ORIX_TestDataAccountBuilder abn(String abn) {
       // Set account abn value
       this.abn = abn;
       return this;
   }
   
   /**
    * @description Returns List<Account> 
    * @param count Account count.
    * @param persisted Account control to insert AccountObject.
    * @return the Returns List<Account> 
    */
   @TestVisible
   private List<Account> create(Integer count, Boolean persisted) {
       // List Intilization 
       List<Account> resultAccountList = new List<Account>();
       /**
            Loop work of how many Account to create
       **/
       for (Integer i = 0; i < count; i++) {
           // Intilization Ojbect
           Account accountObject = new Account();
           
            // Set Account name
           if (this.name != null){
               accountObject.Name = this.name;
           }
           
           // Set Account ABN
           if (this.abn != null){
               accountObject.ORIX_ABN__c = this.abn;
           }
          
           // add to list
           resultAccountList.add(accountObject);
       }
       // insert command
       if (persisted) insert resultAccountList;
       // return  value
       return resultAccountList;
   }
}