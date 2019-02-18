public class Static_Example {
    public Integer aval=0;
    public static Integer bval=0;
    
    public void add(){
        aval=aval+10;
        bval=bval+10;
    }        
    
    public static void call(){
        System.debug(bval);
        Integer cval=10;
    }
          
}