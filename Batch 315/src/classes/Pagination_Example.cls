public class Pagination_Example {
    public Apexpages.StandardSetController controller {set;get;}
    public List<Opportunity> getOptyList(){
        List<Opportunity> opty=(List<Opportunity>)controller.getRecords();
        return opty;
    }
    public Pagination_Example(){
        // fetch all the opportunties from the object 
        List<Opportunity> optyList =[select id,name,stagename,closeDate from Opportunity];
        // pass them to standardSetController
        controller =new Apexpages.StandardSetController(optyList);
        controller.setPageSize(5);
    }
}