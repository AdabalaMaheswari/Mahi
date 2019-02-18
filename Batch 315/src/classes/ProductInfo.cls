public class ProductInfo {
    public string name;
    public Decimal price;
    public Integer quantity;
    public Decimal amount;
    public Decimal gst;
    public Decimal finalPrice;
    
    public ProductInfo(){
        name='Salesforce Development';
        price=500.00;
        quantity=10;
        amount=price*quantity;
        gst=amount*0.18;
        finalPrice=amount+gst;
    }
        
    public void Show(){
        System.debug(name);
        System.debug(price);
        System.debug(quantity);
        System.debug(amount);
        System.debug(gst);
        System.debug(finalPrice);
    }
}