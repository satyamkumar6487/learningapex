public with sharing class DmlMultipleRecord {
    public static void  DmlMultipleRecord() {

List <Account> accList = new  List <Account> ();

for (Integer i = 1 ; i <=  200; i++) {
Account acc = new Account();

acc.Name = 'Multiple DML ' ;
acc.Active__c = 'true';
accList.add(acc);

    }
    insert accList;

}


public static void updateDemo (){



    List <Account> accList = [SELECT Id, Name ,  Rating  , Industry FROM Account Where Rating = 'Hot' ];

if (!accList.isEmpty()) {

    for (Account acc : accList) {

        acc.Industry = 'Warm' ;
acc.Active__c = 'True ';    
    }

    update accList;

}
}







}