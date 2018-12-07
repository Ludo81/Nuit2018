package tests;

import java.io.IOException;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import weather.WeatherReport;


/**
 *
 * @author Greg
 */
public class WeatherReportTester 
{
    WeatherReport wR;
    String city,country;
    
    @Before
    public void setUp() 
    {
        city="Toulouse";
        country="France";
        wR=new WeatherReport(city,country);
    }
    
    @Test
    public void setLocation() throws IOException
    {
        String html=wR.setLocationURL();
        String html2=html.substring(html.indexOf(city));
        System.out.println(html2);
    }
    
    @After
    public void tearDown() {
    }
}
