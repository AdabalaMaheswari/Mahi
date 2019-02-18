public class Java_Lis {
    Public List<Example> myList     {set;get;}
    public Integer index            {set;get;}
    public Java_Lis(){
        myList=new List<Example>();
        for(Integer i=1;i<=4;i++){
            Example e=new Example();
            myList.add(e);
        }        
    }
    public void add(){
        Integer count=myList.size();
        Example e=new Example();
        if(index==count-1){
            myList.add(e);
        }else{
            myList.add(index+1,e);
        }
    }
    public void removeEle(){
        myList.remove(index);
    }
    Public Class Example{
        public Boolean flag     {set;get;}
        public String name      {set;get;}
        public Integer quantity {set;get;}
        public Integer price    {set;get;}
        public Integer total    {set;get;}
    }
}