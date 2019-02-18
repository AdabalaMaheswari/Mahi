trigger Account_Handler on Account (before insert,after insert,after update,before delete) {
    if(Trigger.isBefore && Trigger.isInsert){
        Account_Trigger_Handler.beforeInsert(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isInsert){
        Account_Trigger_Handler.afterInsert(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        Account_Trigger_Handler.afterUpdate(Trigger.oldMap,Trigger.newMap);
    }
    if(Trigger.isBefore && trigger.isDelete){
        Account_Trigger_Handler.beforeDelete(Trigger.old);
    }
}