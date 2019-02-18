public class College {
    public String name;
    public String phone;
    public Decimal feeAmount;
    public Decimal taxAmount;
    public Decimal total;
    
    public void setData(Decimal amount,Decimal gst){
        name='Satish';
        phone='040-23002300';
        feeAmount=amount;
        taxAmount=gst;
        total=feeAmount+taxAmount;
    }
    
    public void Display(){
        System.debug('Fee Amount is'+feeAmount);
        System.debug('Tax Amount is'+taxAmount);
        System.debug('Total Amount is'+total);
        System.debug('Name is'+name);
        System.debug('Phone Number is'+phone);
    }
}