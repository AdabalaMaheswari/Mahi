public class Schema_Example_3 {
    public Map<String,Object> fldMap  {set;get;}
    public Schema_Example_3(){
        Schema.DescribeFieldResult result =Account.Name.getDescribe();
        fldMap =new Map<String,Object>();
        fldMap.put('Type',result.getType());
        fldMap.put('Read',result.isAccessible());
        fldMap.put('Write',result.isUpdateable());
        fldMap.put('Formule',result.isCalculated());
        fldMap.put('Case-Sensitive',result.isCaseSensitive());
        fldMap.put('Create',result.isCreateable());
        fldMap.put('Aggreage',result.isAggregatable());
        fldMap.put('Lookup',result.idlookup);
        fldMap.put('Lenght',result.getByteLength());
        fldMap.put('Unique',result.isUnique());
        fldMap.put('Depends',result.dependentpicklist);

    }
}