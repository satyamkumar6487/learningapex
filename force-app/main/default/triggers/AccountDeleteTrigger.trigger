trigger AccountDeleteTrigger on Account  (Before Delete) {
  if (Trigger.isBefore && Trigger.isDelete) {
    AcccountDeleteTrigger.preventDelete(Trigger.old);
 
}} 