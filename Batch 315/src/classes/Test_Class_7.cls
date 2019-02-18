@isTest
public class Test_Class_7 {
  @isTest
    static void testMe(){
        Test_Data_Contact.invoke();
        Apex_Test_7 a =new Apex_Test_7();
        a.create();
        Integer count =[select count() from Contact where createddate=TODAY];
        System.assertEquals(0,count);
    }
}