/**
 * @Created By : Mayank Bhardwaj
 * @Date : 16/01/2018
 * @Description : Test class for ORIX_ScheduleBatchCalculatefourMonthData 
 **/
@isTest(seeAllData=false)
public class ORIX_ScheduleBatchCalculteforMnthDtaTest 
{
   static testMethod void testSinglePositive()
   {
     // TO DO: implement unit test
        Test.startTest();
        ORIX_ScheduleBatchCalculatefourMonthData sh1 = new ORIX_ScheduleBatchCalculatefourMonthData();
        String sch = '0 0 23 * * ?';
        System.schedule('Test Territory Check', sch, sh1); 
        Test.stopTest();
   
   }
}