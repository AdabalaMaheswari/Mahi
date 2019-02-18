//Enable AccounTeams 
//Setup
//|---> Build
//      |---> Customize
//            |-->Account
//                |---> AccountTeams
//                      |--->Enable AccountTeams
trigger Trigger_Acc_2 on Account (after insert) {
    List<Account> accounts =Trigger.new;
    // Fetch the user whom you want to create as AccountTeamMember 
    User u=[select id from user where alias='vasu'];
    List<AccountTeamMember> teams =new List<AccountTeamMember>();
    // Take one by one account from the Trigger.New
    for(Account a: accounts){
        // Create AccountTeamMember 
        AccountTeamMember atm =new AccountTeamMember();
        atm.AccountId=a.Id; // Id of the account on which teamMember should be created 
        atm.UserId=u.Id;    // Id of the user whom we want to create as teamMember 
        atm.TeamMemberRole='Account Manager';//Role of the user 
        atm.AccountAccesslevel='Read'; // Type of Access 
        teams.add(atm);
    }
    insert teams;
}