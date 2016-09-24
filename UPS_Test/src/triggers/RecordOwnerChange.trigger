trigger RecordOwnerChange on User (after update) {
	list<account> lstAcc=new list<account>();
    List<ID> recordIds=new List<ID>();
    	for(Account acc : [select id, ownerid, owner.isActive, owner.ManagerId from account where ownerId IN: trigger.new]){
        	if(acc.owner.isActive == false && acc.owner.ManagerId != null){
            acc.ownerid = acc.owner.ManagerId;
            lstAcc.add(acc);
            recordIds.add(acc.id);
        }
    }
  if(!lstAcc.isEmpty()){
   AccountHandler.updateAccounts(recordIds);}

}