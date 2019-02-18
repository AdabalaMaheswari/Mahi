trigger Trigger_Acc on Account (before insert) {
    List<Account> accounts=Trigger.new;
    for(Account a:accounts){
        a.Rating='Cold';
        a.Ownership='Public';
    }    
}