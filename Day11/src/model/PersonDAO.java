package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class PersonDAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	public PersonDAO() {
		try {
			Class.forName(driver);
		
		} catch(ClassNotFoundException e) {
			System.out.println("생성자 예외 : " + e.getMessage());
		}
	}
	
	public void close() {
		try {
			if (rs != null)		rs.close();
			if (stmt != null) 	stmt.close();
			if (conn != null) 	conn.close();
		
		} catch(Exception e) {}
	}
	
}
