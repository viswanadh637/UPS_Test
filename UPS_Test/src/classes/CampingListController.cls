public class CampingListController {
    @auraenabled
    public static List<Sales_Lightning__Camping_Item__c> getItems (){
        List<Sales_Lightning__Camping_Item__c> CI = [select id, name,
                                    Sales_Lightning__Price__c,
                                    Sales_Lightning__Packed__c,
                                    Sales_Lightning__Quantity__c
                                    from Sales_Lightning__Camping_Item__c
                                   ];
        return CI;
    }
    @auraenabled
    public static Sales_Lightning__Camping_Item__c saveItem (Sales_Lightning__Camping_Item__c CampingItem){
        insert campingItem;
        return campingItem;
    }
}