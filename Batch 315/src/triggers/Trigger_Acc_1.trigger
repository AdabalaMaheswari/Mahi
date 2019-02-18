trigger Trigger_Acc_1 on Account (before insert) {
    List<Account> accounts=Trigger.new;
    for(Account a:accounts){
        a.rating='Cold';
        a.Ownership='Public';
    } 
}