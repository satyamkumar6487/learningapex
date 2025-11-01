public with sharing class CustomSObject {
  public static void createPosition(){

        Position__c pos = new Position__c();
        pos.Name = ' Position 101 ';
        pos.RecordTypeId ='012gK000002rx5dQAA';
        insert pos;
  }


  public static void CreateCandidate(){

        Candidate__c cans = new Candidate__c();
       cans.Name = 'Candidate 101';

        cans.First_Name__c = 'John'; 
        insert cans;


    }


public static void CreateJobApplication(){

Position__c pos = new Position__c();
        pos.Name = ' Position 102 ';
        pos.RecordTypeId ='012gK000002rx5dQAA';
        insert pos;


         Candidate__c cans = new Candidate__c();
       cans.Name = 'Candidate 103';

        cans.First_Name__c = 'Johny'; 
        insert cans;


        
Job_Application__c jobApp = new Job_Application__c();
        jobApp.Position__c = pos.Id;
        jobApp.Candidate__c = cans.Id;

insert jobApp;



  }



}