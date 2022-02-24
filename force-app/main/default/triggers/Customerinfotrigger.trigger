trigger Customerinfotrigger on customerinfo__c (after insert) {
    for(customerinfo__c obj: Trigger.old){
        if(obj.Balance__c < 10000){
            obj.Rate_of_Interest__c = 0.1;
        }
    }

}