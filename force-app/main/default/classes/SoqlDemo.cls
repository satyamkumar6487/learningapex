public with sharing class SoqlDemo {
    public static void  SoqlDemo() {

 Integer AR = 10000;


List <Account > acclist = new List <account>();

Set<Id> accIds = new Set<Id>();

List <Account > accList1 =  [select  Id, Name  , Industry ,  AnnualRevenue  FROM Account Where Id IN: accIds ];



//acclist = [select  Id, Name  , Industry  from Account where AnnualRevenue >=:AR ];




//  SOQL Query to fetch Account records


//acclist= [SELECT Id, Name FROM Account LIMIT 10];


// Display Account records with Conditions

// acclist = [SELECT Id, Name , Rating , Industry  FROM Account WHERE Rating = 'Hot' AND Industry = 'Banking']  ;


//acclist = [SELECT Id, Name , Rating , Industry  FROM Account WHERE Rating = 'Hot' OR Industry = 'Banking']  ;


//acclist = [SELECT Id, Name , Rating , Industry  FROM Account WHERE Industry IN ('Media', 'Energy')]  ;


//acclist = [SELECT Id, Name , Rating , Industry  FROM Account WHERE Industry = 'Media' Order By Name DESC ];   // Alse ASC for accending order 


System.debug([SELECT COUNT (Name) FROM Account ]);



for (Account acc : acclist){
    System.debug(acc);
}

    }
}