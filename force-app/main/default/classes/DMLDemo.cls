public with sharing class DMLDemo {
    public static void  insertDemo() {
List <Account> accList = new  List <Account> ();
Account acc = new Account();

acc.Name = 'Test DML ';

acc.Active__c = 'true';

accList.add(acc);


Account acc1 = new Account();
acc1.Name = 'Test DML 2';
acc1.Active__c = 'false';
accList.add(acc1);
        insert accList ;
      //  System.debug('Inserted Account Id: ' + acc.Id); 
    }
}