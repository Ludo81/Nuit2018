package Weather;

import com.teknikindustries.yahooweather.WeatherDisplay;
import com.teknikindustries.yahooweather.WeatherDoc;


/**
 *
 * @author Greg
 */
public class WeatherReport 
{
    String worldID;
    
    public WeatherReport(String WOEID)
    {
        this.worldID=WOEID;
    }
    
    public WeatherDisplay getWeather()
    {
        WeatherDoc doc=new WeatherDoc(this.worldID,"c");
        WeatherDisplay disp = new WeatherDisplay();
        return disp;
    }
}
