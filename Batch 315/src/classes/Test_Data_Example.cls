@isTest
public class Test_Data_Example {
  @testsetup
    public static void create(){
        Account acc =new Account();
        acc.Name='Testing';
        acc.Phone='1234';
        acc.Rating='Warm';
        acc.Industry='Banking';
        insert acc;
    }
}