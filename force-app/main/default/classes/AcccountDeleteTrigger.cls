public with sharing class AcccountDeleteTrigger {

       public static  void  preventDelete(List <Account> accList) {


        Profile p = [SELECT ID FROM Profile where Name = 'System Administrator' LIMIT 1];

        for (Account  acc : accList){
            if (UserInfo.getProfileId() != p.Id ||acc.Active__c == 'yes'){
                acc.addError(Label.Prevent_Account_Deletion);

            }

        }
  





    }
}