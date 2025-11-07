public with sharing class Conditional {
    public static void  Conditional() {

        Integer num1 = 15;
        Integer num2 = 10;

        if (num1 > num2) {
            System.debug('num1 is greater than num2');
        } else if (num1 < num2) {
            System.debug('num1 is less than num2');
        } else {
            System.debug('num1 is equal to num2');
        }
    }

// vote 
public static void checkVoteEligibility() {

Integer  age = 18 ;

if (age >= 18){
    System.debug('Eligible to vote');
} else {
    System.debug('Not eligible to vote');
}
    
}
public static void  logicalOperator (){

Integer a = 20;
Integer b = 30;
// if (a > 10 && b > 10){

    if (a > 10 || b > 10){
    System.debug('Both a and b are greater than 10');
}else {
    System.debug('false');

}





}
    }
