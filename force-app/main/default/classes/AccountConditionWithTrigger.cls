// (Before Insert) if Account industry is null null and having value as 'Media' then popilate Rating as Hot
//(After Insert) Create an Opportunity when account is created .


public with sharing class AccountConditionWithTrigger {

public static void  updateRelatedContact(List <Account> acclist , Map<Id , Account >acc01oldmap ){

List <Contact> conList = new List<Contact>();
Map <Id, Account >  accmap = new Map<Id, Account>();
for (Account acc : acclist){
    if (Acc.Phone != acc01oldmap.get(acc.Id).Phone){
        accmap.put(acc.Id , acc);
    }



} 


}



public static void updatePhone(List <Account> accList , Map<Id, Account> accoldMap)    {



    for (Account acc : accList) {
       if (acc.Phone != accoldMap.get(acc.Id).Phone) {
           acc.Description = 'Phone number is updated | Old value = ' + accoldMap.get(acc.Id).Phone + ' | New value = ' + acc.Phone ;
        }
    }




}



public static void createOpp(List <Account> acclist ){
List <Opportunity> oppList = new List<Opportunity>();
for (Account acc : acclist){
Opportunity opp = new Opportunity();
opp.Name = acc.Name ;
opp.CloseDate = Date.today(); 
opp.StageName = 'Prospecting';
opp.AccountId = acc.Id;
oppList.add(opp);


}
if (!oppList.isEmpty()){
insert oppList;

}

}

    public static void PopulateRating (List <Account> acclist ) {
        for (Account acc : acclist) {
            if (acc.Industry != null && acc.Industry == 'Media') {
                acc.Rating = 'Hot';
                acc.Description = 'Account is created ';
            }
        }






    }}
