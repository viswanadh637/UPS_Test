public with sharing class AccConHandler
{
    public void onBeforeInsert(List<Account> lstNewAcc)
    {
        
        Map<String,Account> mapStrNameToAcc = new Map<String,Account>();
        
        // Collect All Names from Trigger.New
        for(Account objNewAcc : lstNewAcc){
            mapStrNameToAcc.put(objNewAcc.Name, objNewAcc);
        }
        // iterate over matching claim and add error
        for(Account objMatchingAcc : [SELECT Id,Name FROM Account WHERE Name in :mapStrNameToAcc.keySet()])
        {
            mapStrNameToAcc.get(objMatchingAcc.Name).addError('Record already exists with same name!');
        }
        
    }

}