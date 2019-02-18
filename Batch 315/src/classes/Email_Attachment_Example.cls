public class Email_Attachment_Example {
    public Email_Attachment_Example(){
        /* Fetch the data from the Document object */
        Document d =[select id,Name,Body,contentType from Document where name='Test'];
        // Based on the document create EmailFileAttachment 
        Messaging.EmailFileAttachment eft1 =new Messaging.EmailFileAttachment();
        eft1.setBody(d.body);
        eft1.setContentType(d.ContentType);
        eft1.setFileName(d.name);
        
        //1. Fetch VF page 
        PageReference p=Page.Order_Of_Topics;
        //2. Convert the body in the form of PDF 
        Blob body=p.getContentAsPDF();
        
        // Based on the VF page create EmailFileAttachment
        Messaging.EmailFileAttachment eft2 =new Messaging.EmailFileAttachment();
        eft2.setFileName('Invoice.pdf');
        eft2.setBody(body);
        // put all the files in a list 
        List<Messaging.EmailFileAttachment> files =new List<Messaging.EmailFileAttachment>{eft1,eft2};
         Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        List<String> toadd=new List<String>{'salesforcebatch300@gmail.com'};
        msg.setToaddresses(toadd);
        msg.setSubject('Test Email');
        msg.setPlainTextBody('This is a test email');
        msg.setFileAttachments(files);
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
}