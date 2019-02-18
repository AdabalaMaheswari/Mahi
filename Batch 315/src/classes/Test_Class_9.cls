@isTest
public class Test_Class_9 {
    testmethod static void callMe(){
        Test_Data_Contact.invoke();
        Apex_Test_9 acc =new Apex_Test_9();
        String cronExp='0 0 10 15 3 ?';
        Test.StartTest();
          Id jobId=System.schedule('MyJob',cronExp,acc);
        Test.stopTest();
        List<Contact> contacts =[select id,otherphone from Contact];
        for(Contact c:contacts){
            System.assertEquals('040-1234',c.otherphone);
        }
    }
}