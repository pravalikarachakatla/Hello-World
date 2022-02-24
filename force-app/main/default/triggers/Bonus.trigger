trigger Bonus on customerinfo__c (before insert) {
    for(customerinfo__c obj:Trigger.New)
    {
        if(obj.Type_of_Account__c == 'Salary')
        {
            Integer IntrandomNumber = Integer.valueof((Math.random()*1000));
            obj.Balance__c = obj.Balance__c + 50 ;
            obj.Comments__c = 'You have won a voucher'+IntrandomNumber;
        }
    }

}