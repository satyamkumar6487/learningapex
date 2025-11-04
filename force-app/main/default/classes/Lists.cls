public with sharing class Lists {
    public static void listItem() {
        // Creating a list
        List<String> fruits = new List<String>();
        fruits.add('Mango');
        fruits.add('Apple');
        fruits.add('Banana');
        fruits.add('Grapes');

        System.debug('Fruits List: ' + fruits);

        // 1️⃣ add(index, element)
        fruits.add(2, 'Orange'); 
        System.debug('After add(index, element): ' + fruits);

        // 2️⃣ addAll(fromList)
        List<String> newFruits = new List<String>{'Pineapple', 'Papaya'};
        fruits.addAll(newFruits);
        System.debug('After addAll(fromList): ' + fruits);

        // 3️⃣ addAll(fromSet)
        Set<String> fruitSet = new Set<String>{'Cherry', 'Kiwi'};
        fruits.addAll(fruitSet);
        System.debug('After addAll(fromSet): ' + fruits);

        // 4️⃣ contains(listElement)
        Boolean hasMango = fruits.contains('Mango');
        System.debug('Contains Mango? ' + hasMango);

        // 5️⃣ equals(list2)
        List<String> fruitsCopy = new List<String>{'Mango','Apple','Banana','Grapes','Orange','Pineapple','Papaya','Cherry','Kiwi'};
        Boolean isEqual = fruits.equals(fruitsCopy);
        System.debug('Both lists equal? ' + isEqual);

        // 6️⃣ clone()
        List<String> clonedList = fruits.clone();
        System.debug('Cloned List: ' + clonedList);

        // 7️⃣ clear()
        fruits.clear();
        System.debug('After clear(): ' + fruits);

        
        // Recreate list for demonstration
        fruits.addAll(new List<String>{'Mango', 'Apple', 'Banana', 'Grapes'});

        // get(index)
        System.debug('Element at index 1: ' + fruits.get(1));

        // indexOf()
        System.debug('Index of Banana: ' + fruits.indexOf('Banana'));

        // isEmpty()
        System.debug('Is the list empty? ' + fruits.isEmpty());

        // remove(index)
        fruits.remove(2);
        System.debug('After remove(index 2): ' + fruits);

        // set(index, element)
        fruits.set(1, 'Strawberry');
        System.debug('After set(index, element): ' + fruits);

        // size()
        System.debug('Size of list: ' + fruits.size());

        // sort()
        fruits.sort();
        System.debug('After sort(): ' + fruits);
    }
}
