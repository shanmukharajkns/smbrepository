public class triggerclass {
  
    public void docountrelatedcontacts(list<contact> objcon){
        
        set<id>setofaccountids=new set<id>();
        for(contact cons:objcon){
            if(cons.AccountId!=null){
                setofaccountids.add(cons.AccountId);
            }
            
        }
        list<account>acntlist=[SELECT Id, Total_no_of_related_contacts__c,(select id from contacts)
                               FROM Account
                               where id in: setofaccountids];
        list<account>toupdateacntlist=new List<account>();
        for(account acnt:acntlist){
            acnt.Total_no_of_related_contacts__c=acnt.contacts.size();
            toupdateacntlist.add(acnt);
        }
        if(!toupdateacntlist.isempty())
        {
            update toupdateacntlist;
        }
    }
}