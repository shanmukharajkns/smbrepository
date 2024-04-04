public class SampleApexBatchJob implements Database.Batchable<sobject>{
    
    
    public database.querylocator start(database.batchablecontext bc){
        system.debug('********THE START ***********');
        string query = 'select id, lastname, phone from contact';
        return database.getQuerylocator(query);
    }
    
    public void execute(database.batchablecontext bc, List<Sobject> datalist){
        system.debug('********THE EXECUTE ***********');
    }
    
    public void finish(database.batchablecontext bc){
        system.debug('********THE FINISH ***********');
    }
    
}