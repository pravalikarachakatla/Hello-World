trigger Triggerbook on Book2__c (before insert) {
    for(Book2__c a : Trigger.New){
        a.Salary__c = 5678;
    }

}