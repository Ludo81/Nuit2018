import dataBase.DAO;
import dataBase.DataSourceFactory;
import java.util.List;
import javax.sql.DataSource;
import org.junit.After;
import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author Greg
 */
public class DAOTester 
{
    private DAO myDAO;
    private DataSource myDataSource;
    
    @Before
    public void setUp() 
    {
        myDataSource=DataSourceFactory.getDataSource();
        myDAO=new DAO(myDataSource);
    }
    
    @Test
    public void testHealthStatus()
    {
        List hs = myDAO.getHealthStatus();
        assertEquals(6,hs.size());
    }
    
    @Test 
    public void testSecurityClasses()
    {
        List sc = myDAO.getSecurityClasses();
        assertEquals(6,sc.size());
    }
    
    @After
    public void tearDown() 
    {
        
    }
}
