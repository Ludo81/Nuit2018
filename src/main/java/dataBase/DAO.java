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
    
    // <editor-fold defaultstate="collapsed" desc="DataRetreive DAO methods. Click on the + sign on the left to edit the code.">
    
    /**
     * Cette fonction permet de récuperer tous les états de santé
     * @return Liste d'entiers des états dans l'ordre suivant:
     *          Infection, Fatigue, Cardio, Temperature, Nouriture, Hydratation.*/
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
    
    /**
     * Cette fonction permet de récuperer toutes les classes de sécurité
     * @return Liste des classes de sécurité de A à F.*/
    public List<Character> getSecurityClasses()
    {
        
        List<Character> sc= new ArrayList();
        
        String sql = "SELECT * FROM SECURITY";
        
        try(Connection connection = myDataSource.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery())
        {
            while(rs.next())
            {
                sc.add(rs.getString("CLASS").charAt(0));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sc;
    }
    
    /**
     * Cette fonction permet d'acceder a l'inventaire des ressources.
     * @return Liste des pourcentages de disponibilités des ressources. 
                Nourriture, Eau, Energetique.*/
    public List<Integer> getStockData()
    {
        List<Integer> sd = new ArrayList();
        
        String sql="SELECT * FROM STOCK";
        
        try(Connection connection = myDataSource.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery())
        {
            while(rs.next())
            {
                for(int i=1; i<4; i++)
                {
                    sd.add(rs.getInt(i));
                }
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sd;
    }
    
    // </editor-fold>
}
