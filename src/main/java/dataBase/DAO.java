package dataBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author Greg
 */
public class DAO 
{
    private final DataSource myDataSource;
    
    public DAO(DataSource dataSource)
    {
        this.myDataSource = dataSource;
    }
    
    public List<Integer> getHealthStatus()
    {
        List<Integer> hS = new ArrayList();
        
        String sql = "SELECT * FROM HEALTH";
        
        try(Connection connection = myDataSource.getConnection();
            PreparedStatement stmt= connection.prepareStatement(sql))
        {
            ResultSet rs = stmt.executeQuery();
            while(rs.next())
            {
                //int val = rs.getInt(1);
                
                for(int i=1; i<7; i++)
                {
                    hS.add(rs.getInt(i));
                }
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return hS;
    }
}
