package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	// 생성자 : 드라이버 로딩
	public BookDAO() {
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
	
	public String test() {
		String sql = "select banner from v$version";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getString("banner");
			
		} catch (SQLException e) {
			System.out.println("test 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public List<BookDTO> selectAll() {
		String sql = "select * from book order by idx desc";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<BookDTO> list = new ArrayList<BookDTO>();
			
			while (rs.next()) {
				BookDTO row = new BookDTO();
				
				row.setIdx(rs.getInt("idx"));
				row.setPrice(rs.getInt("price"));
				row.setPublish_date(rs.getDate("publish_date"));
				row.setPublisher(rs.getString("publisher"));
				row.setTitle(rs.getString("title"));
				row.setWriter(rs.getString("writer"));

				list.add(row);
			}
			
			return list;
			
		} catch (SQLException e) {
			System.out.println("select 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
}
