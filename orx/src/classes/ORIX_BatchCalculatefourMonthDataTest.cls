/**
 * @Created By : Mayank Bhardwaj
 * @Date : 16/01/2018
 * @Description : Test class for ORIX_BatchCalculatefourMonthData 
 **/
@isTest(seeAllData=false)
public class ORIX_BatchCalculatefourMonthDataTest 
{
  @testSetup 
  static void setUpData()
  {   
      List<Account> accountOriginal = new ORIX_TestDataAccountBuilder().name('Test Account').abn('567894321')
                                              .create(1,true);
      system.assertEquals(accountOriginal[0].Name,'Test Account');
      List<Asset> lstAsset = new ORIX_TestDataAssetBuilder().assetName('testAsset').accountId(accountOriginal[0].id).
                                                             ContractExpiryDate(date.today().addMonths(4)).create(1,true);
      system.assertEquals(lstAsset[0].Name,'testAsset');
    
  }
    
  static testMethod void testSinglePositive()
  {
      test.startTest();
      List<Asset> lstAsset = [Select id,Name,AccountId from Asset where Name =: 'testAsset'];
      List<sobject> lsSobject = (List<sobject>)lstAsset;
      ORIX_BatchCalculatefourMonthData  objCalculatefourMonthData = new ORIX_BatchCalculatefourMonthData();
      Database.executeBatch(objCalculatefourMonthData); 	
      
      test.stopTest();
     /*  ORIX_BatchCalculatefourMonthData batchObj = new ORIX_BatchCalculatefourMonthData();
       Database.execute(batchObj,lsSobject);
        String sch = '0 0 23 * * ?';
        System.schedule('test ORIX_BatchCalculatefourMonthData', sch, batchObj); */
  }
}