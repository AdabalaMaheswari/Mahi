public class Governing_Example {
    public void soqlCall(){
        List<Account> accounts=[select id,Name from Account];
        List<Contact> contacts=[select id from Contact];
        for(Integer i=0;i<=50;i++){
            List<Lead> leads=[select ID, Name from Lead];
        }
    }
    public void callSoql(){
        for(Integer i=0;i<=55;i++){
            List<Opportunity> op=[select Id from Opportunity];
        }
        soqlCall();
    }
    public void dmlCall(){
        Account acc=new Account();
        acc.Name='wipro';
        acc.Phone='1111';
        acc.Industry='Banking';
        insert acc;
        update acc;
        delete acc;
        undelete acc;
        for(Integer i=1;i<=100;i++){
           Opportunity a=new Opportunity();
            a.Name='Testing'; 
            a.Type='Prospect';
            insert a;
        }
    }
    public void callDML(){
        Contact c=new Contact();
        c.LastName='Adabala';
        c.FirstName='Mahi';
        for(Integer i=1;i<=100;i++){
            Contact con=new Contact();
            con.LastName='Myla';
            con.FirstName='Satish';
         
            insert con;
        }
        dmlCall();
    }
    public void callRows(){
        List<Account> accounts=new List<Account>();
        for(Integer i=1;i<=10009;i++){
            Account acc=new Account();
            acc.Name='wipro';
            acc.Industry='Banking';
            acc.Phone='040-23002300';
            insert acc;            
        }
    }
    
}