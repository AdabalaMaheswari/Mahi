trigger Account_Opty on Account (after insert) {
    List<Opportunity> optyList=new List<Opportunity>();
    List<Account> accounts=Trigger.new;
    for(Account a:accounts){
        if(a.rating=='hot' && a.ownership=='public'){
            Opportunity op=new Opportunity();
            op.Name=a.Name;
            
            op.StageName='Prospecting';
            op.CloseDate=System.today()+15;
            op.type='New Customer';
            op.AccountId=a.Id;
            optyList.add(op);
        }
    }
    Insert optyList;
}