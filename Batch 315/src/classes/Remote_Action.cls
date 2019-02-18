public class Remote_Action {
  @RemoteAction
    public static String callMe(String lastName,String firstName){
        String name =lastName+' '+firstName;
        return name;
    }
}