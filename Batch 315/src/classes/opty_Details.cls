public class opty_Details{
  public string name;
  public  Integer age;
  public  Date closeDate;
  public  String rating;
    
    public void Show(string stageName){
        
        name='SatishMyla';
        age=33;
    
        if(stageName=='Closewon'){
            closeDate=System.today();
            rating='Hot';
        }else{
            closeDate=System.today()+15;
            rating='Warm';
        }
      
    }
    public void Dispaly(){
        System.debug(name);
        System.debug(age);
        System.debug(closeDate);
        System.debug(rating);
    }

}