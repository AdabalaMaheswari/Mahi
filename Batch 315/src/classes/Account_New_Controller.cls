public class Account_New_Controller {
    public Account acc {set;get;}
    public Account_New_Controller(Apexpages.StandardController controller){
        // Which ever the record is reffered  by StandardController is fetched using getRecord
      acc =(Account) controller.getRecord();          
    }
    public PageReference save(){
        Integer count=[select count() from Account where name=:acc.Name];
        if(count>0){
            Apexpages.Message msg =new Apexpages.Message(Apexpages.Severity.Error,'Duplicate Recrod');
            Apexpages.addMessage(msg);
            return null;
        }else{
            insert acc;
            PageReference  p=new PageReference('/'+acc.Id);
            return p;
        }
    }
}