package weather;

import java.io.IOException;
import org.jsoup.Jsoup;

/**
 *
 * @author Greg
 */
public class WeatherReport 
{
    String location1;
    String location2;
    
    public WeatherReport(String city,String country)
    {
        this.location1=city;
        this.location2=country;
    }
    
    public String setLocationURL() throws IOException
    {
        String webPage = "http://woeid.rosselliot.co.nz/lookup/"+this.location1;
        String html = Jsoup.connect(webPage).get().html();
        
        return html;
    }
}
