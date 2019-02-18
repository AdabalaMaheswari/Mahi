public class Future_Example {
    @future
    public static void callMe(){
        System.debug('Callme 1');
        System.debug('Callme 2');
        SYstem.debug('Callme 3');
        System.debug('Callme 4');
    }
    @future
    public static void show(){
        System.debug('Show 11');
        System.debug('Show 12');
        System.debug('Show 13');
        deleteData();
    }
    @future
    public static void deleteData(){
        List<Account> accounts=[select id from Account where isDeleted=true all ROWS];
        Database.emptyRecycleBin(accounts);
    }
    public void invoke(){
        System.debug('Invoke 1');
        System.debug('Invoke 2');
        System.debug('Invoke 3');
        callMe();
        System.debug('Invoke 4');
        System.debug('Invoke 5');
        show();
        System.debug('Invoke 6');
        System.debug('Invoke 7');
        deleteData();
    }
}