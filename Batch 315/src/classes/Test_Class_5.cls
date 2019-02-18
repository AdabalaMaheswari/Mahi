@isTest
public class Test_Class_5 {
    @isTest
    Static void CallMe(){
        Apex_Test_5 a=new Apex_Test_5();
        a.lastName='Myla';
        a.firstName='Satish';
        a.phone='040-1234';
        a.Create();
        Integer count=[select count() from Contact where lastName=:a.lastName and firstName=:a.firstName];
        System.assertEquals(1,count);
    }
}