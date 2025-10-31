public with sharing class AccountRecord {
    public static Id  insertAccount(String name, String rating, String active) {
        Account acc = new Account();
        acc.Name = name;
        acc.Rating = rating;
        acc.Active__c = active;  
        insert acc;

return acc.Id;

    }


    public static void insertContact(){

        Id accId;
        accId = insertAccount('sgts', 'Hot', 'yes');

        Contact con = new Contact(FirstName = ' Contact 101 ' , LastName = ' Con 201');
        con.accountId = accId;
        insert con;

    }

public static void  insertAccountwithConAndOpp(String name, String rating, String active) {
        Account acc = new Account();
        acc.Name = name;
        acc.Rating = rating;
        acc.Active__c = active;  
        insert acc;

        Contact con = new Contact(FirstName = ' Contact 101 ' , LastName = ' Con 201');
        con.accountId = acc.Id;
        insert con;

        Opportunity opp = new Opportunity();
        opp.Name = ' Opportunity 101 ';
        opp.StageName = 'Prospecting';
        opp.CloseDate = Date.today().addDays(30);
        opp.AccountId = acc.Id;
        insert opp;

} 




    
}