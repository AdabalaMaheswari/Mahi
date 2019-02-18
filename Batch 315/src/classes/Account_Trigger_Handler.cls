/* All the automation activities that should be performed on the account are defiend in a single class
 * as Trigger_handler
 */
public class Account_Trigger_Handler {
    /* 
     *  When ever a new Account is Created with 
    *   1. zone as South make student as owner 
    *  2. Zone as North Make Satish as owner 
   */
    public static void beforeInsert(List<Account> accounts){
        User stud=[select id from User where alias='vasu'];
        User mahi=[select id from user where alias='MAdab'];
        for(Account a: accounts){
            if(a.zone__c=='South'){
                a.ownerId=stud.Id;
            }else if(a.zone__c=='North'){
                a.ownerId=mahi.Id;
            }
        }
    }
    /*  When the Account is Created with Industry as Banking and ownership as Public
    *  Create a Student as AccountTeamMember
    */
    public static void afterInsert(List<Account> accounts){
        User std=[select id from User where alias='vasu'];
        List<AccountTeamMember> teams =new List<AccountTeamMember>();
        for(Account a: accounts){
            if(a.industry=='Banking'){
                AccountTeamMember atm =new AccountTeamMember();
                atm.AccountId=a.Id;
                atm.userId=std.Id;
                atm.AccountAccessLevel='Read';
                atm.TeamMemberRole='Account Manager';
                teams.add(atm);
            }
        }
        insert teams;
    }
   /* When ever Industry is modified as Banking then Submit Account for approval .
    * ApprovalProcess:AccountApproval 
    */
     public static void afterUpdate(Map<Id,Account> oldMap, Map<Id,Account> newMap){
        Set<Id> accIds =oldMap.keySet();
        for(Id key :accIds){
            Account oldAcc=oldMap.get(key);
            Account newAcc=newMap.get(key);
            if(oldAcc.industry!='Banking' && newAcc.industry=='Banking'){
                Approval.ProcessSubmitRequest req1 = new Approval.ProcessSubmitRequest();
            req1.setObjectId(key); // record whose industry value is modified
             req1.setSubmitterId(newAcc.ownerId); // Owner of the record
            req1.setProcessDefinitionNameOrId('AccountApproval');// Name of the approval process
            Approval.ProcessResult result = Approval.process(req1);
                
            }
            
        }
         
    }
    /* When Account is Deleted ,first delete the corrsponing payments then delete account.*/
    public static void beforeDelete(List<Account> accounts){
       // fetch all the payments of those accounts which are deleted
       List<Payment__c> payments =[select id from Payment__c where Amount1__c in:accounts];
        if(payments.size()>0){
            delete payments;
        }
    }
}