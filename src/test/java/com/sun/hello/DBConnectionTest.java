package com.sun.hello;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class DBConnectionTest {
	
	@Inject
	private DataSource ds;
	

	
	
	Statement stmt;
	ResultSet rs;
	
	
	@Test
	public void testConnection() {
		try (Connection con = ds.getConnection()) {
			
				System.err.println("DB 접속 ");
				
				String query ="SELECT * FROM USER";
				
				stmt = con.createStatement();
				rs = stmt.executeQuery(query);
				
				con.close();
				
				while(rs.next()) {
					
					System.out.println("id "+ rs.getString(1)+" name "+rs.getNString(3));
				}
				//jm.selectId("1203sunho");
				
				System.err.println("%%%%%%%%%%%%%%%%%");
				
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
