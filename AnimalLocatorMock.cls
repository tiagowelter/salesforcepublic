/**
 * AnimalLocatorMock
 *
 * get Rest API mock test. Trailhead challenge
 *
 * @author Tiago Welter - tiagowelter@gmail.com
 * @since 06.06.2019
 *
 * @see Classes / AnimalLocator
 */

@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
	
    global HTTPResponse respond(HTTPRequest request) {        
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
        response.setStatusCode(200);
        return response;        
    }
    
}
