public class Apex_Test_5 {
    public string lastName;
    public string firstName;
    public string phone;
    
    public void Create(){
        Contact con=new Contact();
        con.LastName=lastName;
        con.FirstName=firstName;
        con.Phone=phone;
        insert con;
    }
}