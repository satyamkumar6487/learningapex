public with sharing class SoqlObject {
    public static void  SoqlObject() {

        AggregateResult [] groupedResult = [SELECT Account.Name ,Sum (Amount ) FROM Opportunity GROUP BY Account.Name ];

        System.debug('Grouped Result: ' + groupedResult);


        for (AggregateResult ar : groupedResult){
            System.debug('Account Id: ' + ar.get('Name') + ' Total Amount: ' + ar.get('expr0'));
        }

    }
}