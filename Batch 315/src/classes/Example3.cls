public class Example3 {
	public list<Account> accounts;
    public void callMe(){
        accounts=new List<Account>();
        accounts=[select id, Name, phone, industry, type from Account where createdDate=TODAY];
        System.debug(accounts);
    }
}