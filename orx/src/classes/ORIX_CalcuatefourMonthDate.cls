/**
 * @auther      : Mayank Bhardwaj
 * @date        : 30/11/2017
 * @description : This class is used to populate prior date on asset that will be used to schecule by process builder.
 **/
public with sharing class ORIX_CalcuatefourMonthDate 
{
  @InvocableMethod(label='Update four Months Prior Date')
  public static void updateDate(List<Id> assetId)
  {
      //fetching asset data on the basis of asset id passed from process buidler
      List<Asset>  lstAsset = [Select id,ORIX_Contract_Expiry_Date__c,ORIX_Prior2MonthsExpirayDate__c,
                                ORIX_Prior4MonthsExpirayDate__c
                                from Asset where id in : AssetId];
      //Checking that list is not null and size is greater than 0
      if(lstAsset != null && lstAsset.size() > 0)
      { 
          for(Asset objAsset : lstAsset) {
              if(objAsset.ORIX_Contract_Expiry_Date__c != null) {
                  Date dt = objAsset.ORIX_Contract_Expiry_Date__c;
                  Date tdyDate = date.today();
                  //finding the difference between today and contract expiry date.
                  integer difference = tdyDate.monthsBetween(dt);
                  //if difference is greater than 4 then calculating and storing date in a field
                  if(difference >= 4)
                  {
                    objAsset.ORIX_Prior4MonthsExpirayDate__c =  objAsset.ORIX_Contract_Expiry_Date__c.addMonths(-4);
                  }
                  else
                  {
                    objAsset.ORIX_Prior4MonthsExpirayDate__c = null;  
                  }
                  
                  //if difference is greater than 2 then calculating and storing date in a field
                  if(difference >= 2)
                  {
                    objAsset.ORIX_Prior2MonthsExpirayDate__c =  objAsset.ORIX_Contract_Expiry_Date__c.addMonths(-2);
                  }
                  else
                  {
                    objAsset.ORIX_Prior2MonthsExpirayDate__c = null;  
                  }
              }
              
          }
          
          try {
                update lstAsset; 
          }
          catch(DmlException e) {
              
          }
         
      } 
    
  }
}