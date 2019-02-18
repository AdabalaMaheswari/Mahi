trigger A1_trigger on Account (before insert) {
    // Trigger.New is a variable which will hold list of new records which we are trying to insert.
    List<Account> accounts =Trigger.new;
    for(Account a: accounts){
        a.Type='Prospect';
        a.ownership='Public';
    }
}