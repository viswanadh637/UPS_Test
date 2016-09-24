public class AccountHandler{
    @future
    public static void UpdateAccounts(List<ID>recordIds){
     List<Account> accts = [SELECT ownerid,owner.ManagerId FROM Account WHERE Id IN :recordIds];
     List<Account> accts1 =new List<Account>();
        for (Account acc:accts ){
            acc.ownerid = acc.owner.ManagerId;
            accts1.add(acc);
           }
           update accts1 ;
        }
}