trigger AccountTrigger on Account (before insert) {
if (Trigger.isInsert){
  if (Trigger.isBefore){

       AccountT.updateDes(Trigger.new);// Trigger.new contains the new Account records being inserted
    }
}

}


