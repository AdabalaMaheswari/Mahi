public class Schema_Example_5 {
    public Map<String,Schema.SobjectType> objMap {set;get;}
    public List<String> objectNames        {set;get;}
    public Schema_Example_5(){
        // schema.getGlobalDescribe()
        objMap=Schema.getGlobalDescribe();
        Set<String> objects =objMap.keySet();
        objectNames=new List<String>(objects);
    }
}