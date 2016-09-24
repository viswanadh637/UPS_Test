trigger AvoidDuplicates on Account (before insert) {
    AccConHandler objAccHandler = new AccConHandler();
    if(Trigger.isBefore && Trigger.isInsert)
        objAccHandler.onBeforeInsert(Trigger.New);

}