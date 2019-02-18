public class Queue_Example implements Queueable {
    public void execute(QueueableContext qc){
        List<Account> accounts=[select Id, Name,Phone,Rating from Account where createdDate=LAST_WEEK];
        for(Account a:accounts){
            a.rating='Hot';
        }
        update accounts;
    }
}