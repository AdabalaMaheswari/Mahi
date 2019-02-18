trigger Trigger_lead_1 on Lead (before insert) {
    List<Lead> leads=Trigger.new;
    Group g1=[Select Id from Group where name='LifeQueue'];
    Group g2=[Select Id from Group Where name='HealthQueue'];
    for(Lead l:leads){
        if(l.Leadsource=='web'){
            l.OwnerId=g1.Id;
        }else if(l.Leadsource=='Phone'){
            l.OwnerId=g2.Id;
        }
    }
}