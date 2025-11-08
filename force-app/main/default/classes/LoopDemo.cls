public with sharing class LoopDemo {

    // Simple loop demo
    public static void printLoop() {
        for (Integer i = 0; i < 5; i++) {
            System.debug('The value of i is: ' + i);
        }
    }

    // Sum of natural numbers
    public static void sumOfNaturalNumber() {
        Integer n = 5;
        Integer sum = 0;
        for (Integer i = 1; i <= n; i++) {
            sum = sum + i;
        }
        System.debug('Sum of first ' + n + ' natural numbers is: ' + sum);
    }

    // Multiplication table using while loop
    public static void tableWithWhileLoop() {
        Integer n = 5;
        Integer i = 1;
        while (i <= 10) { // 10 tak table show karne ke liye
            System.debug(n + ' x ' + i + ' = ' + (n * i));
            i++;
        }
    }

    // Even-Odd check
    public static void eveOdd() {
        Integer n = 4;
        for (Integer i = 1; i <= n; i++) {
            if (Math.mod(i, 2) == 0) {
                System.debug(i + ' is Even');
            } else {
                System.debug(i + ' is Odd');
            }
        }
    }
}
