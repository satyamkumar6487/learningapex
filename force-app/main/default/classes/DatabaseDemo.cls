public with sharing class DatabaseDemo {
    public static void DatabaseDemoMethod() {

        List<Contact> conList = new List<Contact>{
            new Contact(FirstName='John', LastName='Doe'),
            new Contact(FirstName='Jane', LastName='Smith'),
            new Contact(FirstName='Michael', LastName='Johnson'),
            new Contact()   // empty contact
        };

        // Partial Insert
        Database.SaveResult[] srList = Database.insert(conList, false);

        for (Database.SaveResult sr : srList) {
            if (sr.isSuccess()) {
                System.debug('Contact inserted with ID: ' + sr.getId());
            } else {
                for (Database.Error err : sr.getErrors()) {
                    System.debug('Error inserting contact: ' + err.getMessage());
                    System.debug('Status code: ' + err.getStatusCode());
                }
            }
        }
    }
}
