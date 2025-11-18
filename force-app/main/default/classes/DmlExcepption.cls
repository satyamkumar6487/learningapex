public with sharing class DmlExcepption {
    public static void  DmlExcepption() {

    List <Account> accList = new List <Account> ();

    try {
    for (Integer i = 1; i <= 5; i++) {
        Account acc = new Account();
        //acc.Name = 'DML Exception ' + i;
        acc.Active__c = 'true';      // TEXT field
        accList.add(acc);
        insert accList;   // Insert all

    } } 
    catch (DmlException e) {
        System.debug('A DML exception has occurred: ' + e.getMessage());
    }
}}