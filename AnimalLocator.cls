/**
 * AnimalLocator
 *
 * get Rest API. Trailhead challenge
 *
 * @author Tiago Welter - tiagowelter@gmail.com
 * @since 06.06.2019
 *
 * @see Classes / AnimalLocator
 */

public class AnimalLocator {
    
    public static String getAnimalNameById(Integer idAnimal){
        String sReturn;
        
		Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + idAnimal);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if (response.getStatusCode() == 200) {
 			Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String,Object> animals  = (Map<String,Object>) results.get('animal');
            sReturn = string.valueOf(animals.get('name'));
        }    
        
        return sReturn;
    }
}
