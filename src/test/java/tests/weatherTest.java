/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import com.github.dvdme.ForecastIOLib.ForecastIO;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Greg
 */
public class weatherTest {
    
    ForecastIO fc;
        
    @Before
    public void setUp() {
        fc = new ForecastIO("48219d4da91dd36bc20c510d0ab91788");
    }
    
    @Test
    public void test()
    {
        
        System.out.print(fc.getCurrently());
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
}
