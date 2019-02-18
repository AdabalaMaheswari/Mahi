public class Schema_Example_2 {
    public Map<String,Schema.SobjectField> objMap {set;get;}
    public List<String> fields             {set;get;}
    public Schema_Example_2(){
        /* Get the properties of the given sobject */
        Schema.DescribeSobjectResult result =Opportunity.SobjectType.getDescribe();
        // field Name is the key and fieldType is value
        objMap =result.fields.getMap();
        Set<String> myNames =objMap.keySet();
        fields =new List<String>(myNames);
        
    }
    
}