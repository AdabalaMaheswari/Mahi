@isTest
public class Test_Class_4 {
    @isTest
    Static void callMe(){
        Apex_Test_4 acc=new Apex_Test_4();
        acc.accName='TCS';
        acc.phone='040-1234';
        acc.rating='Hot';
        acc.create();
        Integer count=[select count() from Account where name=:acc.accName and phone=:acc.Phone];
        System.assertEquals(1,count);        
    }
}