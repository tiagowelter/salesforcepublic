/**
 * TestVerifyDate.
 *
 * class test for VerifyDate. Trailhead challenge
 *
 * @author Tiago Welter - tiagowelter@gmail.com
 * @since 06.06.2019
 *
 * @see Classes / VerifyDate
 */
@isTest
public class TestVerifyDate {
    
    @isTest static void testCheckDatesInDate(){
       Date dt1 = VerifyDate.CheckDates(system.today(), system.today().addDays(20));
       System.assertEquals(system.today().addDays(20),dt1) ;
    }

    @isTest static void testCheckDatesNotInDate(){
       Date dt1 	= VerifyDate.CheckDates(system.today(), system.today().addDays(35));
       System.assertEquals(system.today().addMonths(1).toStartofMonth().addDays(-1),dt1) ;
    }    
}
