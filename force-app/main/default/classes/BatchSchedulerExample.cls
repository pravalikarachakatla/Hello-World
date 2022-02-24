global class BatchSchedulerExample implements Schedulable {
    global void execute (SchedulableContext s)
    {
        BatchExample2 op = new BatchExample2();
        ID Batchid = Database.executeBatch(op, 100);
        System.debug(Batchid);
        
    }
    

}