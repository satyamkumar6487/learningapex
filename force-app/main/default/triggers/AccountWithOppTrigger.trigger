trigger AccountWithOppTrigger on Account (before insert, after insert ,before update, after update) {

    if (Trigger.isBefore && Trigger.isInsert) {
        AccountConditionWithTrigger.PopulateRating(Trigger.new);
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        AccountConditionWithTrigger.createOpp(Trigger.new);
    }


if (Trigger.isUpdate && Trigger.isBefore) {
    AccountConditionWithTrigger.updatePhone(Trigger.new, Trigger.oldMap);

}

else if (Trigger.isAfter){
    AccountConditionWithTrigger.updateRelatedContact(Trigger.new , Triger.oldMap);
}



}