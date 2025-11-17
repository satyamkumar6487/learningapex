public with sharing class DmlRelation {
    public static void insetObject() {

        List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();

        // Create Accounts
        Account acc = new Account(
            Name = 'Test DML Relation',
            Active__c = 'true'
        );
        accList.add(acc);

        Account acc1 = new Account(
            Name = 'Test DML Relation 2',
            Active__c = 'false'
        );
        accList.add(acc1);

        insert accList;

        // Create Contacts (link with parent Account)
        Contact con = new Contact(
            FirstName = accList[0].Name,
            LastName = 'Contact Last Name',
            AccountId = accList[0].Id
        );
        conList.add(con);

        Contact con1 = new Contact(
            FirstName = accList[1].Name,
            LastName = accList[1].Name,
            AccountId = accList[1].Id
        );
        conList.add(con1);

        insert conList;
    }
}
