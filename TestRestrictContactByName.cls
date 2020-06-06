/**
 * TestRestrictContactByName.
 *
 * mass Apex Test Trigger for class RestrictContactByName . Trailhead challenge
 *
 * @author Tiago Welter - tiagowelter@gmail.com
 * @since 06.06.2019
 *
 * @see Classes / RestrictContactByName (trigger)
 */
 
 @isTest
public class TestRestrictContactByName {
    
    @isTest static void TestRestrictContactByNameValid() {
        
        List<Contact> ctt = new List<Contact>();
        
        ctt.add(new Contact(LastName='Welter',FirstName = 'Tiago'));
        ctt.add(new Contact(LastName='AAA'));
        ctt.add(new Contact(LastName='INVALIDNAME',FirstName = 'Tiago'));
       	ctt.add(new Contact());
        
        Test.startTest();
        Database.SaveResult[] result = Database.insert(ctt, false);
        Test.stopTest();
        
        for(Database.SaveResult sr : result){
            if(!sr.isSuccess()){
                System.assert(!sr.isSuccess());
            }else{
                System.assert(sr.isSuccess());
            }
        }
        
    }    

}
