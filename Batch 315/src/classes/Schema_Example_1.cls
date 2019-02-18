public class Schema_Example_1 {
    public Map<String,object> objResult {set;get;}
    public Schema_Example_1(){
        objResult =new Map<String,Object>();
        Schema.DescribeSobjectResult result =Account.SobjectType.getDescribe();
        objResult.put('Label',result.getLabel());
        objResult.put('PluralLabel',result.getLabelPlural());
        objResult.put('Name',result.getName());
        objResult.put('Key',result.getKeyPrefix());
        objResult.put('Read',result.isAccessible());
        objResult.put('Write',result.isUpdateable());
        objResult.put('Create',result.isCreateable());
        objResult.put('Delete',result.isDeletable());
        objResult.put('Custom',result.isCustom());
        objResult.put('MRUEnabled',result.isMruEnabled());
        objResult.put('Queryable',result.isQueryable());
        objResult.put('Mergable',result.isMergeable());
    }
}