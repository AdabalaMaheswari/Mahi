public class Employee1 {
    public String lastName;
    public String firstName;
    public Integer experience;
    public Decimal Salary;
    public Decimal bonus;
    
    public Employee1(string lName, String fName,integer exp){
        lastName=lName;
        firstName=fName;
        experience=exp;
    }
    
    public void setData(){
        if(experience>5)
        {
            salary=80000;
            bonus=10000;
        }
        else{
            salary=60000;
            bonus=9000;
        }
        system.debug(' Last Name is'+lastName);
        System.debug('First Nane is'+firstName);
        System.debug('Experience is'+experience);
        System.debug('Salary is'+salary);
        system.debug('Bonus is'+bonus);
    }        

}