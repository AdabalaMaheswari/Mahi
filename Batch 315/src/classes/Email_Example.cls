/* If we want to send email to third party system
 * toAddresses     : List<String> 
 * bccAddresses    : List<String>
 * ccAddresses     : List<string>
 * subject         : String 
 * plainTextBody   : String 
 * htmlBody         : String 
 * senderName    : String 
 * replyTo      : String 
*/
public class Email_Example {
    public void send(List<Lead> leads){
        // Create list to store email address of the leads 
        List<String> toadd=new List<String>();
        for(Lead l:leads){
            toadd.add(l.email);
        }
         Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        msg.setToAddresses(toadd);
        msg.setSubject('Lead Acknowlegement');
        String body='Test email';
        msg.setPlainTextBody(body);
        msg.setSenderDisplayName('Ravi Mohan');
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails); // i can call Messaging.sendEMail only 10 times in a method            
    }
}