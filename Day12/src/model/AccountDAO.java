package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public AccountDAO() {
		try {
			Class.forName(driver);
			
		} catch (ClassNotFoundException e) {
			System.out.println("생성자 예외 : " + e.getMessage());
		}
	}
	
	public void close() {
		try {
			if (rs != null) 	rs.close();
			if (stmt != null) 	stmt.close();
			if (conn != null)	conn.close();
		} catch (SQLException e) {}
	}
	
	public List<AccountDTO> selectAll() {
		String sql = "select * from account order by idx desc";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<AccountDTO> list = new ArrayList<AccountDTO>();
			
			while (rs.next()) {
				AccountDTO row = new AccountDTO();
				
				row.setEmail(rs.getString("email"));
				row.setIdx(rs.getInt("idx"));
				row.setJoin_date(rs.getDate("join_date"));
				row.setNick(rs.getString("nick"));
				row.setUserid(rs.getString("userid"));
				row.setUserpw(rs.getString("userpw"));
				
				list.add(row);
			}
			
			return list;
			
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public AccountDTO selectOne(AccountDTO input) {
		String sql = "select * from account where userid = ? and userpw = ?";
														// 1              2 (= index)
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			
			rs = pstmt.executeQuery();
			
			// ID/PW가 일치하는 정보는 한 줄만 얻어진다. 즉, 반복 불필요
			rs.next();
			
			AccountDTO row = new AccountDTO();
			
			row.setEmail(rs.getString("email"));
			row.setIdx(rs.getInt("idx"));
			row.setJoin_date(rs.getDate("join_date"));
			row.setNick(rs.getString("nick"));
			row.setUserid(rs.getString("userid"));
			row.setUserpw(rs.getString("userpw"));
			
			return row;
			
		} catch (SQLException e) {
			System.out.println("selectOne 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	
	
	
	
	
	
	
}
