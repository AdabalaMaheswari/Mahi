public class Action_pooler {
    public String result  {set;get;}
    public Integer count  {set;get;}
    public Action_Pooler(){
        count=1;
        result='Time :'+system.now()+' count :'+count;
    }
    public void callMe(){
         count=count+1;
        result='Time :'+system.now()+' count :'+count;
    }
}