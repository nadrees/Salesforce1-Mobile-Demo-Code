public with sharing class VIPListController {
    public List<Account> VIPList { get; private set; }
    
    public VIPListController() {
        // get the list of VIP accounts
        VIPList = [SELECT Id, Name 
                   FROM Account 
                   WHERE VIP__c = true
                   AND OwnerId = :UserInfo.getUserId()];
    }
}