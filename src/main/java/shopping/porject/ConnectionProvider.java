package shopping.porject;

import java.sql.*;
public class ConnectionProvider {
	
	public static Connection getCon() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping_db", "root", "tiwari");
			return conn;
			
					
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

}
