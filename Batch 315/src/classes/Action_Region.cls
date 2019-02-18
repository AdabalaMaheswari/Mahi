public class Action_Region {
    public String name     {set;get;}
    public string branch   {set;get;}
    public string city    {set;get;}
    public String colg    {set;get;}
    public String result  {set;get;}
    public void callMe(){
        result='Name :'+name+' :branch :'+branch+' :city :'+city+' :colg :'+colg;
    }
}