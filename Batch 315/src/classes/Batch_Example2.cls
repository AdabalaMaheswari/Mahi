global class Batch_Example2 implements Database.Batchable<Sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        string query='select id, name,stageName,closedDate from Opportunity where CreatedDate=THIS_MONTH ';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Opportunity> oppty){
        for(Opportunity p:oppty){
            p.stageName='New Closed won';
            p.closeDate=System.today();
        }
        update oppty;
    }
    global void finish(Database.BatchableContext bc){
        
    }

}