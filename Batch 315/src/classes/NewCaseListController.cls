public class NewCaseListController {
    public List<Case> result 	{set;get;}
	 public List<Case> getNewCases() {
               
        List<Case> results = Database.query(
            'SELECT id, CaseNumber, Status ' +
            'FROM Case ' +
            'WHERE Status=\'New\''
        );
        return results;
        
    }
}