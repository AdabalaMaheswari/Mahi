public class Schedule_Example_2  implements Schedulable {
    public void execute(SchedulableContext sc){
        List<Lead> leads=[select id, status from Lead where CreatedDate=TODAY];
        for(Lead l:leads){
            l.status='New';
        }
        update leads;
    }
}