public class Inbound_Example_1 implements Messaging.InboundEmailHandler{
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env){
        Messaging.InboundEmailResult result =new Messaging.InboundEmailResult();
        try{
            String add=email.fromAddress;
            String subject=email.subject;
            string body=email.plainTextBody;
            Contact con=[select id from Contact where email=:add limit 1];
            Case c=new Case();
            c.subject=subject;
            c.description=body;
            c.contactId=con.Id;
            c.Status='New';
            c.Priority='High';
            c.Origin='Email';
            insert c;
            result.success=true;
                
        }catch(Exception e){
             result.success=false;
        }
        return result;
    }
}