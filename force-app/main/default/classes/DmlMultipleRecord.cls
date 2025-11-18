public with sharing class DmlMultipleRecord {

    // Method 1: Create 200 Accounts using UPSERT
    public static void DmlMultipleRecord() {

        List<Account> accList = new List<Account>();

        for (Integer i = 1; i <= 200; i++) {
            Account acc = new Account();
            acc.Name = 'Multiple DML ' + i;
            acc.Active__c = 'true';      // TEXT field
            accList.add(acc);
        }

        upsert accList;   // Insert all
    }


    // Method 2: Update existing + add new records using ONLY UPSERT
    public static void updateDemo() {

        // Step 1: Query existing Accounts
        List<Account> accList = [SELECT Id, Name, Rating, Industry, Active__c 
                                 FROM Account 
                                 WHERE Rating = 'Hot'];

        // Step 2: Modify existing records
        for (Account acc : accList) {
            acc.Industry = 'Warm';
            acc.Active__c = 'true';     // TEXT field
        }

        // Step 3: Add 5 new Accounts into same list
        for (Integer i = 1; i <= 5; i++) {
            Account acc = new Account();
            acc.Name = 'Test Upsert ' + i;
            acc.Active__c = 'true';
            accList.add(acc);
        }

        // Step 4: Only ONE UPSERT → updates + inserts
        upsert accList;
    }


// Delete Method 
public static void deleteDemo() {

        // Step 1: Query Accounts to be deleted
        List<Account> accList = [SELECT Id 
                        
                                 Name,  Rating  from Account 
                                 WHERE Name Like ' Test Upsert % '];
                                 

        // Step 2: Delete all queried Accounts
        if(!accList.isEmpty()){
        delete accList;
    }}

    public static void undeleteDemo() {

        // Step 1: Query deleted Accounts from Recycle Bin
        List<Account> accList = [SELECT Id 
                                 FROM Account 
                                 WHERE Name Like ' Test Upsert % ' 
                                 ALL ROWS];

        // Step 2: Undelete all queried Accounts
        if(!accList.isEmpty()){
        undelete accList;
    }}



}
