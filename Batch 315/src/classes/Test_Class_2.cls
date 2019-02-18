@isTest
public class Test_Class_2 {
    @isTest
    Static void callMe(){
        Apex_Test_2 a1=new Apex_Test_2();
        a1.show();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
        System.assertEquals('Wipro',a1.accName);
        System.assertEquals('Hot',a1.rating);
        a1.invoke();
        System.assertEquals('TCS',a1.accName);
        System.assertequals('Warm',a1.rating);
    }
}