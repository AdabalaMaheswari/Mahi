public class Email_Account_Example {
    public Account acc {set;get;}
    public Email_Account_Example (Apexpages.StandardController controller){
        List<String> fields =new List<String>{'Name','Phone','Industry'};
        controller.addFields(fields);
       acc=(Account)controller.getRecord();
    }
    public PageReference callMe(){
        List<Contact> contacts =[select id ,FirstName,email,phone,otherphone from Contact where accountId=:acc.Id];
        List<Messaging.SingleEmailMessage> emails =new List<Messaging.SingleEmailMessage>();
        for(Contact c:contacts){
            Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
            List<String> toadd=new List<String>{c.email};
            msg.setToAddresses(toadd);
            msg.setSubject('Get_In_Touch');
            String body='Dear '+c.FirstName;
            body=body+'<br/> Current Details of your Account are <br/>';
           body=body+'<b> Company:<i>'+acc.name+'</i></b><br/><br/>';
            body=body+'<b> Phone:<i>'+acc.Phone+'</i></b><br/><br/>';
            body=body+'<b>Email:<i>'+c.Email+'</i></b><br/><br/>';
            body=body+'<b>OtherPhone:<i>'+c.otherphone+'</i></b><br/><br/>';
            msg.setHtmlBody(body);
            msg.setSenderDisplayName('Accounts Team');
            emails.add(msg);
            
        }
        Messaging.sendEmail(emails);
        PageReference p=new PageReference('/'+acc.Id);
        return p;
    }
}