trigger Trig1 on aadhar__c (after update) {
for(aadhar__c ad:Trigger.old){
if(ad.salary__c>5000){
ad.address__c='Hyderabad';
Update ad;
}
}

}