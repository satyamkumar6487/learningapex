public with sharing class Lists {
    public static void Lists() {
        // Creating a list
        List<String> fruits = new List<String>();
        fruits.add('Mango');
        fruits.add('Apple');
        fruits.add('Banana');
        fruits.add('Grapes');

        System.debug('Fruits List: ' + fruits);

        // 1️ add(index, element)
        fruits.add(2, 'Orange'); 
        System.debug('After add(index, element): ' + fruits);

        // 2️ addAll(fromList)
        List<String> newFruits = new List<String>{'Pineapple', 'Papaya'};
        fruits.addAll(newFruits);
        System.debug('After addAll(fromList): ' + fruits);

        // 3️ addAll(fromSet)
        Set<String> fruitSet = new Set<String>{'Cherry', 'Kiwi'};
        fruits.addAll(fruitSet);
        System.debug('After addAll(fromSet): ' + fruits);

        // 4️ contains(listElement)
        Boolean hasMango = fruits.contains('Mango');
        System.debug('Contains Mango? ' + hasMango);

        // 5️ equals(list2)
        List<String> fruitsCopy = new List<String>{'Mango', 'Apple', 'Banana', 'Grapes', 'Orange', 'Pineapple', 'Papaya', 'Cherry', 'Kiwi'};
        Boolean isEqual = fruits.equals(fruitsCopy);
        System.debug('Both lists equal? ' + isEqual);

        // 6️ clone()
        List<String> clonedList = fruits.clone();
        System.debug('Cloned List: ' + clonedList);

        // 7️ clear()
        fruits.clear();
        System.debug('After clear(): ' + fruits);
    }
}
