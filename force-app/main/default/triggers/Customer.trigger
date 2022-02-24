trigger Customer on customerinfo__c (before insert,before update) {
    for(customerinfo__c obj:Trigger.New){
        if(obj.Type_of_Account__c == 'savings' ){
            obj.Type_of_Account__c = 'savings';
        }
        if(obj.Balance__c<1000)
            obj.Comments__c='please charge ur account';
    }
    

}