trigger After_trigger on Contact (after insert) {
   
        list<account>a=new list<account>();
    for(contact c:trigger.new)
    {
        account a1=new account();
        a1.Phone=c.Phone;
        a1.Name=c.LastName;
        a.add(a1);
        
    }
    insert a;
    }