package com.chartIsWorking;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = ChartIsWorkingApplication.class)
@WebAppConfiguration
public class ChartIsWorkingApplicationTests {
	@Autowired
	private DataSource ds;

	@Test
	public void contextLoads() {
	}

    @Test
    public void testConnection() throws Exception{ //작성
        System.out.println("ds : "+ds);
        
        Connection con = ds.getConnection(); //ds(DataSource)에서 Connection을 얻어내고
        
        System.out.println("con : "+con); //확인 후
        
        con.close(); //close
    }
}
