package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	public static Connection getConnection() {
		
		Connection conn = null;
	
		String url = "jdbc:mysql://localhost/schema1_test?useUnicode=true&characterEncoding=utf8";
		String id = "root";
		String pw ="a123";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,id,pw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
}
