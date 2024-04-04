public class mulrecords {
    public void insertmultiplerecords(){
        list<contact> contactlist= new list<contact>();
        for(Integer i=0; i<160; i++){
            contact con=new contact();
            con.LastName='Test_'+i;
            contactlist.add(con);
        }
        insert contactlist;
    }
    
}