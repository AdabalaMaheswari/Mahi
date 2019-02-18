trigger Lead_Mail_Example on Lead (after insert) {
    Email_Example e=new Email_Example();
    e.send(Trigger.new);
}