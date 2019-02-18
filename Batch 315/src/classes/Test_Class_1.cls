@isTest
public class Test_Class_1 {
    @isTest
    Static void call(){
        Apex_Test_1 a1=new Apex_Test_1();
        a1.callMe();
        System.assertEquals('ias',a1.name);
        System.assertEquals('Hyd',a1.city); 
    }
}