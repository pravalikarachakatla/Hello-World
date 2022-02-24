global class BatchExample2 implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        string q = 'select Id,Name from Account';
        return database.getQueryLocator(q);
       
    }
    global void execute(Database.BatchableContext bc,List<Account> aclist){
        for (Account ac: aclist)
        {
            ac.Name = ac.Name+'Appended By Batch job';
        }
        try{
            update aclist;
        }
        catch(Exception r)
        {
            System.debug(r.getMessage());
        }
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Batch Execution Finished');
    }
   
}