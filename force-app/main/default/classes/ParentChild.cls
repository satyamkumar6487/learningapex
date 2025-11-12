public with sharing class  ParentChild {
    public  static void parentChild() {

List <Account> acclist = new List<Account>();


acclist = [SELECT Id, Name ,(Select Id , FirstName , LastName FROM Contacts  ) From Account Where Rating = 'Hot'];


for (Account acc : acclist){
    System.debug('Account Name: ' + acc.Name);
    for (Contact con : acc.Contacts){
        System.debug('   Contact Name: ' + con.FirstName + ' ' + con.LastName);



    }
}}}