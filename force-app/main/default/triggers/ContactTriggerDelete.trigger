trigger ContactTriggerDelete on Contact (After insert , after delete , after undelete){

if (Trigger.isInsert){
  if (Trigger.isAfter){
    ContactTriggerDeleteHandler.totalContactCount(Trigger.new);
    
  }
}


if (Trigger.isDelete){
  if (Trigger.isAfter){
    ContactTriggerDeleteHandler.handleAfterDelete(Trigger.old);
  }


} 

if (Trigger.isUndelete){
  if (Trigger.isAfter){
    ContactTriggerDeleteHandler.totalContactCount(Trigger.new);
    
  }
}
}