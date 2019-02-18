trigger Opty_Trigger on Opportunity (after update) {
    Map<Id,Opportunity> oldMap=Trigger.oldMap;
    Map<Id,Opportunity> newMap=Trigger.newMap;
    Set<Id> optyIds =oldMap.keySet();
    User u =[select id from User where alias='vasu'];

    List<OpportunityTeamMember> teams=new List<OpportunityTeamMember>();
    
    for(Id key:optyIds){
        Opportunity old=oldMap.get(key);        
        Opportunity opt=newMap.get(key);
         if(old.stageName!='Closed Won' && opt.stageName=='Closed Won'){
            // Create a student as opportunityTeammember with Read/Write access
            OpportunityTeamMember ot =new OpportunityTeamMember();
            ot.opportunityId=key;
            ot.TeamMemberRole='Account Manager';
            ot.UserId=u.Id;
            ot.OpportunityAccessLevel='Edit';
            teams.add(ot);
        }
        
    }
    insert teams;
}