@isTest
public class Test_Class_8 {
  @isTest
    static void testMe(){
        Test_Data_Example.create();
        Apex_Test_8 a =new Apex_Test_8();
        Test.startTest();
          Id job=Database.executeBatch(a,5);
        Test.stopTest();
        List<Account> accounts =[select id,Rating from Account];
        for(Account acc: accounts){
            System.assertEquals('Hot',acc.rating);
        }
    }
}