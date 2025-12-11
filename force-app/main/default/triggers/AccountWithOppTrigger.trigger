trigger AccountWithOppTrigger on Account (before insert, after insert) {

    if (Trigger.isBefore && Trigger.isInsert) {
        AccountConditionWithTrigger.PopulateRating(Trigger.new);
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        AccountConditionWithTrigger.createOpp(Trigger.new);
    }
}
