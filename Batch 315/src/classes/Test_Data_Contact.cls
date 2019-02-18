@isTest
public class Test_Data_Contact {
  @testSetup
    public static void invoke(){
        Contact con=new Contact();
        con.LastName='Myla';
        con.FirstName='Satish';
        con.Phone='040-1234';
        insert con;
    }
}