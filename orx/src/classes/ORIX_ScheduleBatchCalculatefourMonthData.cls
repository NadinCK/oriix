/**
 * @auther      : Mayank Bhardwaj
 * @date        : 13/02/2017
 * @description : This class is used to excute the batch class ORIX_BatchCalculatefourMonthData.
 **/
global class ORIX_ScheduleBatchCalculatefourMonthData implements Schedulable
{  
   global void execute(SchedulableContext ctx) 
     {
        //Create instance of batch class
        ORIX_BatchCalculatefourMonthData  objCalculatefourMonthData = new ORIX_BatchCalculatefourMonthData();
        //execute the batch class
        Database.executeBatch(objCalculatefourMonthData,200);
     }
}