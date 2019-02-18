trigger Trigger_Opp_1 on Opportunity (before insert) {
    List<Opportunity> oppList=Trigger.new;
    for(Opportunity op:oppList){
        op.LeadSource='Web';
        op.Type='New Customer';
        op.closeDate=System.today()+15;
    }
}