/**
 * AnimalLocatorTest
 *
 * get Rest API test. Trailhead challenge
 *
 * @author Tiago Welter - tiagowelter@gmail.com
 * @since 06.06.2019
 *
 * @see Classes / AnimalLocator
 */

@isTest
public class AnimalLocatorTest {
	 @isTest static  void testGetCallout() {
     	Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
         
		String result = AnimalLocator.getAnimalNameById(1);

         System.assertEquals('chicken',result,'The name is not Valid.');         
     }    
}
