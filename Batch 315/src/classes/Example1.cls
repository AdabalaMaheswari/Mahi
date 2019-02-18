public class Example1 {
    public Integer rate;
    public Decimal interest;
    
    public Example1(){
        rate=12;
    }
    public void Calculate(Decimal amount,Integer years){
       interest=(amount*rate*years)/100;
    }
    
    public void Display(){
        System.debug('Rate is'+rate);
        System.debug('Interest is'+interest);
    }

}