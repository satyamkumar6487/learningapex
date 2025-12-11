public with sharing class PositionTriggerHandler {

    // AFTER INSERT -> Create Task
    public static void createTask(List<Position__c> posList) {

        List<Task> taskList = new List<Task>();

        for (Position__c pos : posList) {

            if (pos.Status__c == 'New Position') {

                Task tsk = new Task();
                tsk.Subject = 'Follow up on position ' + pos.Name;
                tsk.ActivityDate = System.today().addDays(7);
                tsk.OwnerId = UserInfo.getUserId(); 
                tsk.Status = 'Not Started';
                tsk.WhatId = pos.Id;   // relate task with Position record

                taskList.add(tsk);
            }
        }

        if (!taskList.isEmpty()) {
            insert taskList;
        }
    }


    // BEFORE INSERT -> Populate default values
    public static void PopulateData(List<Position__c> posList) {

        for (Position__c pos : posList) {

            if (pos.Status__c == 'New Position') {

                if (pos.Open_Date__c == null) {
                    pos.Open_Date__c = System.today();
                }

                if (pos.Min_Pay__c == null) {
                    pos.Min_Pay__c = 10000;
                }

                if (pos.Max_Pay__c == null) {
                    pos.Max_Pay__c = 15000;
                }
            }
        }
    }
}
