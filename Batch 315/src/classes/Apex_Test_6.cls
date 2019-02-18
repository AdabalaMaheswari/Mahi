public class Apex_Test_6 {
    public void invoke(){
        List<Account> accounts =[select id,Name,Rating from Account ];
        for(Account a: accounts){
            a.rating='Hot';
        }
        update accounts;
    }
}