public with sharing class ConditionObeject {
    public static void  ConditionObeject() {

        List<Account> acclist = new List<Account> ();

        acclist = [SELECT Id, Name FROM Account LIMIT 5];
        if (!acc1list.isEmpty()){
            System.debug('List Contains ..' + acclist);
        }

    }
}