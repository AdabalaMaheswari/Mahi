public class Product_Info {
    public String name;
    public Integer quantity;
    public Decimal price;
    public Decimal total;
    public Decimal discount;
    
    public Product_Info(){
        name='Salesforce Development';
        quantity=15;
        price=1200;
    }
    public void calculate(){
        total=price*quantity;
        if(total > 10000){
            discount=1000;
            System.debug('Discount is'+discount);
            System.debug('Total Amount is'+total);
           
        }else{
            discount=500;
            System.debug('Discount is'+discount);
            System.debug('Total Amount is'+total);
        }
    }
}