public class Schema_Example_4 {
    public List<SelectOption> options           {set;get;}
    public String searchField            {set;get;}
    public Map<String,Schema.SobjectField> fldMap  {set;get;}
    public Schema_Example_4(){
        options =new List<SelectOption>();
        // Get the description about the object
        Schema.DescribeSobjectResult result =Account.SobjectType.getDescribe();
        // Get the fields of the given object in the form of Map 
        // where fieldName is the key and fieldType  is the value
        fldMap =result.fields.getMap();
    }
    public void search(){
        //Fetch the fieldType from the map based on fieldName given
       Schema.SobjectField fld =fldMap.get(searchField);
        // Get the description of the field 
       Schema.DescribeFieldResult result=fld.getDescribe();
        // check the fieldType is picklist 
       if(result.getType()==Schema.DisplayType.PICKLIST){
           // if the fieldtype is picklist then fetch the options 
           List<Schema.PicklistEntry> myList =result.getPicklistValues();
           for(Schema.PickListEntry p:myList){
               SelectOption op=new SelectOption(p.getValue(),p.getLabel());
               options.add(op);
           }
       }
    }
}