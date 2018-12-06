package dataBase;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author Greg
 */
public class DataSourceFactory 
{
    static
    {
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataSourceFactory.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static DataSource getDataSource()
    {
        org.apache.derby.jdbc.ClientDataSource ds = new org.apache.derby.jdbc.ClientDataSource();
        ds.setDatabaseName("carryHealth");
        ds.setUser("ChampoBeach");
        ds.setPassword("projettoulouse");
        ds.setServerName("localhost");
        ds.setPortNumber(1527);
        return ds;
    }
}
