public class Child_Example extends Parent_Example {
    public String name;
    public Integer age;
    public Decimal salary;
    
    public override void show(){
        name='Kiran';
        age=45;
        salary=70000;
    }
    
    public void callMe(){
        Super.show();			
        System.debug(Super.name);
        System.debug(Super.age);
        System.debug(Super.salary);
      }
    public void invoke(){
        show();
        System.debug(name);
        System.debug(age);
        System.debug(salary);
    }

}