@isTest
public class Test_Class_6 {
  @isTest
    static void callMe(){
        Test_Data_Example.create();
        Apex_Test_6 a=new Apex_Test_6();
        a.invoke();
        List<Account> accounts =[select id,rating from Account];
        for(Account acc: accounts){
            System.assertEquals(acc.rating,'Hot');
        }
    }
}