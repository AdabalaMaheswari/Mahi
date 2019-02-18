@isTest
public class Test_Class_3 {
    @isTest
    Static void callMe(){
        Apex_Test_3 a1=new Apex_Test_3();
        a1.industry='Energy';
        a1.call();
        System.assertEquals('Hot',a1.rating);
        System.assertEquals('Private',a1.ownership);
        a1.industry='Banking';
        a1.call();
        System.assertEquals('Warm',a1.rating);
        System.assertEquals('Public',a1.ownership);
    }
}