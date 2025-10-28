public with sharing class DemoApex {
    public static void method1(){


        Boolean isActive = true;
        System.debug('value isActive: ' + isActive);
    }


    public static void method2(){
        String fnname = 'John', lnname = 'Doe';
        System.debug('Full Name: ' + fnname + ' ' + lnname);

    }


    public static void method3(){
        Id recordId = '001xx000003DGbYAAW';
        System.debug('Id ' + recordId);
    }

   
}