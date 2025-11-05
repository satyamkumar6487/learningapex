public with sharing class SetQuestion {
    
 public static void objectWithSet(){

    Set<Id> accid = new Set<Id>();

    List<Account> accList = new List<Account>();

    accList = [select Id , Name FROM Account LIMIT 5];

    for (Account acc : accList){

        accid.add(acc.Id); 

        System.debug('Account Ids are: ' + accid);
    }
 }
    }
