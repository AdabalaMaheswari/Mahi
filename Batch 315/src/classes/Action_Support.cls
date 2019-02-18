public class Action_Support {
    public List<SelectOption> cities     {set;get;}
    public List<SelectOption> places     {set;get;}
    public String selected           {set;get;}
    public Map<String,List<String>> cityMap {set;get;}
    public Action_Support(){
        cityMap =new Map<String,List<String>>();
        List<String> hplaces =new List<String>{'SRNagar','LBNagar'};
        List<String> cplaces =new List<String>{'Chromepet','Thambaram'};
        List<string> bplaces =new List<String>{'ECity','Marthali'};
        cityMap.put('Hyd',hplaces);
        cityMap.put('Ban',bplaces);
        cityMap.put('Che',cplaces);
        cities =new List<SelectOption>();
        places=new List<SelectOption>();
        SelectOption op=new SelectOption('none','-None-');
        cities.add(op);
        places.add(op);
        Set<String> keys =cityMap.keySet();
        for(String s:keys){
            SelectOption p=new SelectOption(s,s);
            cities.add(p);
        }
    }
    public void callMe(){
         places.clear();
         SelectOption op=new SelectOption('none','-None-');
         places.add(op);
         if(selected !='none'){
      List<String> myPlaces =cityMap.get(selected);
            for(String s: myPlaces){
               SelectOption p=new SelectOption(s,s);
                places.add(p);
            }
         }
    }
}