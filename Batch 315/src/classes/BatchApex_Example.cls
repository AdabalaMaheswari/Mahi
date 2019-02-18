global class BatchApex_Example implements Database.Batchable<Sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        string query='select id, name, type from Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Account> accounts){
        for(Account a:accounts){
            a.type='New Customer';
        }
        update accounts;
    }
    global void finish(Database.BatchableContext bc){
        
    }

}