public class Apex_Test_9 implements Schedulable{
    public void execute(SchedulableContext sc){
        List<Contact> contacts =[select id,Otherphone from Contact ];
        for(Contact c:contacts){
            c.otherphone='040-1234';
        }
        update contacts;
    }
}