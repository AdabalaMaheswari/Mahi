public class Student_Date {
    public String stuName;
    public String stuPhone;
    public String college;
    public String branch;
    
    public Student_Date(String name,String phone){
        stuName=name;
        stuPhone=phone;
        college='CBIT College';
        branch='CSE';
        System.debug(stuName);
        System.debug(stuPhone);
        System.debug(college);
        System.debug(branch);
    }

}