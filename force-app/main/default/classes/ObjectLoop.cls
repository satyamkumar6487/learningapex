public with sharing class ObjectLoop {

    public static void showList() {

        // Create list to store Accounts
        List<Account> accList = new List<Account>();

        // Create map to store Id -> Account pairs
        Map<Id, Account> accListMap = new Map<Id, Account>();

        // Create set to store Account Ids
        Set<Id> accIds = new Set<Id>();

        // SOQL query to get first 5 Accounts
        accList = [SELECT Id, Name FROM Account LIMIT 5];

        // Check if list is not empty
        if (accList.size() > 0) {
            for (Account acc : accList) {
                System.debug('Account Name is: ' + acc.Name);

                // Add each account to map and set
                accListMap.put(acc.Id, acc);
                accIds.add(acc.Id);
            }
        }
    }
}
