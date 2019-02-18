public class Apex_Test_7 {
    public void create(){
        List<Contact> contacts =[select id from Contact where createdDate=TODAY];
        delete contacts;
    }
}