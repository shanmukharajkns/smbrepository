public class bulkapex {
    public void listing(){
      list<Account>Accountacc=[SELECT Name, Id, Phone FROM Account];
		system.debug('row contains in account: ' + Accountacc.size());        
        
    }
}