public with sharing class SetDemo {
    public static void demoSet() {

        // Creating a Set
        Set<String> fruits = new Set<String>();
        fruits.add('Mango');
        fruits.add('Apple');
        fruits.add('Banana');
        fruits.add('Grapes');

        // Adding a duplicate (won't be added)
        fruits.add('Grapes');
        System.debug('Fruits Set: ' + fruits);

        // Using addAll from a List
        List<String> moreFruits = new List<String>{'Orange', 'Pineapple', 'Banana'};
        fruits.addAll(moreFruits); // adds all unique elements from the list
        System.debug('After addAll from List: ' + fruits);

        // Using addAll from another Set
        Set<String> tropicalFruits = new Set<String>{'Papaya', 'Mango', 'Lychee'};
        fruits.addAll(tropicalFruits); // adds all unique elements from the set
        System.debug('After addAll from Set: ' + fruits);

        // 🔹 isEmpty()
        System.debug('Is Set Empty? ' + fruits.isEmpty());

        // 🔹 remove(element)
        fruits.remove('Apple');
        System.debug('After removing Apple: ' + fruits);

        // 🔹 removeAll(listOfElementsToRemove)
        List<String> toRemove = new List<String>{'Orange', 'Banana'};
        fruits.removeAll(toRemove);
        System.debug('After removeAll(List): ' + fruits);

        // 🔹 removeAll(setOfElementsToRemove)
        Set<String> toRemoveSet = new Set<String>{'Papaya'};
        fruits.removeAll(toRemoveSet);
        System.debug('After removeAll(Set): ' + fruits);

        // 🔹 retainAll(listOfElementsToRetain)
        List<String> toRetain = new List<String>{'Mango', 'Lychee'};
        fruits.retainAll(toRetain);
        System.debug('After retainAll(List): ' + fruits);

        // 🔹 retainAll(setOfElementsToRetain)
        Set<String> toRetainSet = new Set<String>{'Mango'};
        fruits.retainAll(toRetainSet);
        System.debug('After retainAll(Set): ' + fruits);

        // 🔹 size()
        System.debug('Size of Set: ' + fruits.size());
    }
}
