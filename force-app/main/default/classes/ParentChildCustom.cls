public with sharing class ParentChildCustom {

    // Constructor (optional)
    public ParentChildCustom() {
        // You can leave this empty or add initialization logic
    }

    // Static method to execute the parent-child SOQL query
    public static void parentChild() {

        // Create a list to store Position records
        List<Position__c> posList = new List<Position__c>();

        // Parent-Child SOQL query: Position → Job Applications
        posList = [SELECT Id, Name, (SELECT Id, Name FROM Job_Applications__r) FROM Position__c];

        // Loop through each Position record
        for (Position__c pos : posList) {
            System.debug('Position Name: ' + pos.Name);

            // Loop through related Job Applications (child records)
            for (Job_Application__c app : pos.Job_Applications__r) {
                System.debug('   Job Application Name: ' + app.Name);
            }
        }
    }
}
