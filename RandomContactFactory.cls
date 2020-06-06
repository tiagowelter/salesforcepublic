/**
 * RandomContactFactory.
 *
 * Return list of contacts. Trailhead challenge
 *
 * @author Tiago Welter - tiagowelter@gmail.com
 * @since 06.06.2019
 *
 * @see Classes  / RandomContactFactory
 * 
 * @param   Integer numContacts - number of contacts to insert in the list
 * 			String slastName - LastName of Contacts
 * 
 * @return List<Contacts>
 */
 
public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer numContacts, String slastName){
        List<Contact> ctt = new List<Contact>();
        
        for(Integer i=0;i<numContacts;i++){
            ctt.add(new Contact(LastName = slastName,FirstName = i.format()));
        }
        
        return ctt;
    }

}
