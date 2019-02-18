public class Apex_Test_4 {
    public string accName;
    public string phone;
    public string rating;
    public void create(){
        Account a=new Account();
        a.Name=accName;
        a.Phone=phone;
        a.rating=rating;
        insert a;
    }
}