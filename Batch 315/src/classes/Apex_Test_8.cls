global class Apex_Test_8 implements Database.Batchable<sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select id,Rating from Account');
    }
    global void execute(Database.BatchableContext bc,List<Account> accounts){
        for(Account a: accounts){
            a.Rating='Hot';
        }
        update accounts;
    }
    global void finish(Database.BatchableContext bc){
        
    }
}