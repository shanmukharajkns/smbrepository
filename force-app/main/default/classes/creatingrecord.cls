public class creatingrecord {
    public void methods(string var){
        /*Account acc=new Account();
acc.Name='Test apex account business';
acc.phone='2197678989';
acc.AccountNumber='2397651321';
insert acc;*/
        Account acc=[SELECT Id FROM Account where Name = :var limit 1];
            contact con=new contact();
        	con.LastName='Shambala';
        	con.AccountId= acc.id;
        	insert con;
    }
    
}