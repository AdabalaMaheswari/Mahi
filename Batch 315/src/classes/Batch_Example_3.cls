global class Batch_Example_3 implements Database.Batchable<Sobject>,Database.Stateful{
    public Integer count=0;
    public Static Integer size=0;
    global Database.QueryLocator start(Database.BatchableContext bc){
        string query='select id,name from Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Account> scope){
        for(Account a:scope){
            count=count+1;
        }
    }
    global void finish(Database.BatchableContext bc){
        Account acc=new Account();
        acc.Name='Count='+count+' : Size='+size;
        insert acc;
    }
}