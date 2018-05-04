/**
 * @Created By : Priyank Rajvanshi
 * @Date : 17/01/2018
 * @Description : Builder class for Asset
 **/
@IsTest @TestVisible
private class ORIX_TestDataAssetBuilder {

    
   //asset name
   private String assetName; 
   //   Account Id
   private String accountId;
   // ContractExpiry Date
   private Date ContractExpiryDate;
   /**
    * @description Constructor of builder class
    * @param
    * @return 
    */
    @TestVisible
   private ORIX_TestDataAssetBuilder() {
       
   }
   
   /**
    * @description It will set asset Name
    * @param name asset Name.
    * @return the Returns asset Name
    */
   @TestVisible
   private ORIX_TestDataAssetBuilder assetName(String assetName) {
       // Set asset name
       this.assetName = assetName;
       return this;
   }
   
   /**
    * @description It will set Account Id
    * @param name Account Id.
    * @return the Returns Account Id
    */
   @TestVisible
   private ORIX_TestDataAssetBuilder accountId(String accountId) {
       // Set Account Id
       this.accountId = accountId;
       return this;
   }
    
    /**
    * @description It will set asset Name
    * @param name asset Name.
    * @return the Returns ContractExpiryDate
    */
   @TestVisible
   private ORIX_TestDataAssetBuilder ContractExpiryDate(Date ContractExpiryDate) {
       // Set asset name
       this.ContractExpiryDate = ContractExpiryDate;
       return this;
   }
   
   /**
    * @description Returns List<Account> 
    * @param count Account count.
    * @param persisted Account control to insert AccountObject.
    * @return the Returns List<Account> 
    */
   @TestVisible
   private List<Asset> create(Integer count, Boolean persisted) {
       // List Intilization 
       List<Asset> resultAssetList = new List<Asset>();
       /**
            Loop work of how many Account to create
       **/
       for (Integer i = 0; i < count; i++) {
           // Intilization Ojbect
           Asset AssetObject = new Asset();
           
            // Set Asset name
           if (this.assetName != null){
               assetObject.Name = this.assetName;
           }
           
           // Set Account Id
           if (this.accountId != null){
               AssetObject.accountId= this.accountId;
           }
           
           // Set Account Id
           if (this.ContractExpiryDate != null){
               AssetObject.ORIX_Contract_Expiry_Date__c= this.ContractExpiryDate;
           }
          
           // add to list
           resultAssetList.add(AssetObject);
       }
       // insert command
       if (persisted) insert resultAssetList;
       // return  value
       return resultAssetList;
   }
}