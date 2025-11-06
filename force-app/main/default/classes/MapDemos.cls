public with sharing class MapDemos {
    public static void mapRecord() {
        // Create a Map
        Map<Integer, String> colors = new Map<Integer, String>();
        colors.put(1, 'Red');
        colors.put(2, 'Blue');
        colors.put(3, 'Green');
        colors.put(4, 'Yellow');
        colors.put(5, 'Black');

        System.debug('Original Map: ' + colors);

        //  putAll(fromMap)
        Map<Integer, String> extraColors = new Map<Integer, String>();
        extraColors.put(6, 'White');
        extraColors.put(7, 'Purple');
        colors.putAll(extraColors);
        System.debug('After putAll: ' + colors);

        // 3️ remove(key)
        colors.remove(3);
        System.debug('After removing key 3: ' + colors);

        // size()
        System.debug('Size of map: ' + colors.size());

        //  values()
        System.debug('All values: ' + colors.values());
    }
}
