public with sharing class MapObject {
    public static void objectMethod() {

        //  Create a List of Account records
        List<Account> accList = [SELECT Id, Name FROM Account LIMIT 5];

        //  Create an empty Map to store Id -> Account
        Map<Id, Account> accMap = new Map<Id, Account>();

        //  putAll(sObjectList) — automatically maps Id → record
        accMap.putAll(accList);

        // Print Map data
        System.debug('Account Map: ' + accMap);
    }
    
   public  static void  () {

    List<Account> acclist = new List<Account> ();
    
    acclist = [SELECT Id, Name FROM Account LIMIT 5];
    Map<Id , Account> accmap = new Map<Id , Account> (acclist);

    System.debug('Map Contains ='+ accmap);
    System.debug('Map keys  ='+ accmap.keySet());
    System.debug('Map Values ='+ accmap.values());
    
    
    }
}
