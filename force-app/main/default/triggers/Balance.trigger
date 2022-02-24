trigger Balance on customerinfo__c (before update,before insert) {
    for (customerinfo__c obj : Trigger.New)
    {
           Date dtDate = obj.Accountopeningdate__c;
           Integer yr = dtDate.year();
           System.debug(yr);
           if(yr == 2022)
              {
                  if(obj.Balance__c > 10000)
                  {
                      obj.Comments__c = 'You are Silver Customer.Please contact branch for new offers especially for you';
                  }
                  else if(obj.Balance__c > 100000)
                  {
                      obj.Comments__c = 'You are Gold Customer.Please contact branch for new offers especially for you';
                  }
                  else if(obj.Balance__c > 1000000)
                  {
                      obj.Comments__c = 'You are platimum Customer.Please contact branch for new offers especially for you';
                  }
              }
 Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
 List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
 List<String> sendTo = new List<String>();
 sendTo.add('pravalikar@dextara.com');
 mail.setToAddresses(sendTo);
 mail.setSubject('Your contact detail are added'); 
 String body = obj.Comments__c;
 mail.setHtmlBody(body);
 mails.add(mail);
 Messaging.sendEmail(mails);
            
              }
    }