public class Email_Example_4 {
    public void callMe(){
        
        /* Fetch the EmailTemplate which you want to send */
        EmailTemplate et =[select id  from EmailTemplate where name='Account_Test'];
        
        /* Fetch the contact /user/Lead to whom you want to send emailTemplate */
        Contact con =[select id,Email,AccountId from Contact where phone='9898'];
        
        /* Create a single email message */
        Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        /* Id of the template which we want to send */
         msg.setTemplateId(et.id);
        /* TargetObjectId : it will take the id of the user /contact /lead  to whom you want to sendemail */
        msg.setTargetObjectId(con.Id);
        /* whatid : id of the record whoses data need to be displayed in the Email 
      setWhatId : This will be used only when targetObjectId is contact
    */
        msg.setWhatId(con.accountId);
       
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.SendEmailResult[] result= Messaging.sendEmail(emails);
        System.debug(result[0].isSuccess());
        System.debug(result[0].getErrors());
    }
}