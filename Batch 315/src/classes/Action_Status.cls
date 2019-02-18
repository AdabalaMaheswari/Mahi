public class Action_Status {
    public void callMe(){
       List<String> names =new List<String>();
        for(Integer i=1;i<=15000;i++){
            names.add(''+i);
        }
    }
    public void show(){
        List<Contact> accounts =[select id from Contact where createdDate=TODAY];
        delete accounts;
    }
}