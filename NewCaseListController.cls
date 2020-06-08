/**
 * NewCaseListController.
 *
 * custom controller for Visualforce. Trailhead challenge
 *
 * @author Tiago Welter - tiagowelter@gmail.com
 * @since 07.06.2019
 *
 * @see classes / NewCaseListController
 */

public class NewCaseListController {
    public List<Case> getNewCases(){

        List<Case> cs = Database.query(
            'SELECT Id, CaseNumber ' +
            'FROM Case ' +
            'WHERE Status = \'New\'' +
            'LIMIT 10'
        ); 
        
        return cs;
        
    }
}
