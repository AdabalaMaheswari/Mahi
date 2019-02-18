public class Contact_Transfer {
    public List<Contact> contacts {set;get;}
    public Contact_Transfer(Apexpages.StandardSetController controller){
        List<String> fields =new List<String>{'LastName','FirstName','OwnerId'};
        controller.addFields(fields);
        contacts =(List<Contact>)controller.getSelected();
    }
    public PageReference updateData(){
        User u =[select id from User where alias='vasu'];
        for(Contact c:contacts){
            c.ownerId=u.Id;
        }
        update contacts;
        PageReference p=new PageReference('/003/o');
        return p;
    }
}