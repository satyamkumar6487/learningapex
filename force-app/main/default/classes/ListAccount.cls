public with sharing class ListAccount {
public static void createAccounts() {

List<Account> accList = new List<Account>();


Account acc1 = new Account(Name= 'Alpha', Active__c = 'yes');
Account acc2 = new Account (Name = 'Beta', Active__c='True');


accList.add(acc1);
accList.add(acc2);


insert accList;


 
}}