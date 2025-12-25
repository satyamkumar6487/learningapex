public with sharing class ContactTriggerDeleteHandler {

    public static void totalContactCount(List<Contact> conList) {

        Set<Id> accIds = new Set<Id>();
        List<Account> accList = new List<Account>();

        // 1️⃣ Collect Account Ids
        for (Contact con : conList) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
            }
        }

        // 2️⃣ Recalculate contact count
        for (Account acc : [
            SELECT Id, (SELECT Id FROM Contacts)
            FROM Account
            WHERE Id IN :accIds
        ]) {
            acc.total_Contacts__c = acc.Contacts.size();
            accList.add(acc);
        }

        // 3️⃣ Update Accounts
        if (!accList.isEmpty()) {
            update accList;
        }
    }
}
