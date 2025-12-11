trigger PositionTrigger on Position__c (before insert, after insert) {

    if (Trigger.isBefore && Trigger.isInsert) {
        PositionTriggerHandler.PopulateData(Trigger.new);
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        PositionTriggerHandler.createTask(Trigger.new);
    }
}
