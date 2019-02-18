public class Lead_Queue_EXample implements Queueable {
    public void execute(QueueableContext qc){
        List<Lead> leads=[select Id from Lead where createdDate=TODAY];
        delete leads;
        
        Queue_Example qe=new Queue_Example();
        Id jobId=System.enqueueJob(qe);
    }
}