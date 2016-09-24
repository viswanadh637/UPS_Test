public class StoreFrontController {

    List<Merchandise__c> products;
    
    public List<Merchandise__c> getProducts() {
        if(products == null) {
           products = [SELECT Id, Name, Description__c, Price__c FROM Merchandise__c];
        }
        return products;
    }
}