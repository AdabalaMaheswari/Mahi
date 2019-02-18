public class sup
{
   public  static String s='i am static';           //static variable            
    public sup(String st)
    {
        s=st;           //static variable accessed in constructor
        setMe('I am Set'); //static method accessed in constructor
        System.debug('superClass Constructor , assigning value to static String==> '+s);
    }
    public static void setMe(String f)             //static method
    {
        s=s+f;
        System.debug('static method '+s);
    }
}