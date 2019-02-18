public class Mass_Delete {
    public List<Account> accounts {set;get;}
    public Mass_Delete(Apexpages.StandardSetController controller){
        List<String> fields =new List<String>{'Name','Phone','Industry','Rating'};
        controller.addFields(fields);
        accounts =(List<Account>)controller.getSelected();
    }
    public PageReference deleteAccounts(){
        Database.delete(accounts,false);
        PageReference p=new PageReference('/001/o');
        return p;
    }
}
// fetch all the selected contacts and re-assign them to student