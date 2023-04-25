package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class AccountDAO {
	private Context ct;
	private DataSource ds;
	
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 1. 생성자 : xml에 작성한 자원을 가져온다
	public AccountDAO() {
		
		try {
			ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/oracle");
			
		} catch (NamingException e) {
			System.out.println("생성자 예외 : " + e.getMessage());
			
		} finally {
			close();
			// - ds를 불러오면 커넥션이 이미 활성화 되어 있는데
			// - 이를 닫지 않으면 커넥션이 꽉차게 된다
		}
	}
	
	// 2. close() : 커넥션 해제
	public void close() {
		// - 이전 JDBC만 사용할때 코드와 동일하지만
		// - DBCP를 사용시 실제로 커넥션을 닫는게 아니고 Pool 반환하는 형태로 바뀐다
		try {
			if (rs != null) 	rs.close();
			if (stmt != null) 	stmt.close();
			if (pstmt != null) 	pstmt.close();
			if (conn != null) 	conn.close();
			
		} catch(Exception e) {}
	}

	// 3. 필요한 SQL은 메서드 단위로 생성
	public String test() {
		String sql = "select banner from v$version";
		
		try {
			// ds에 커넥션이 보관되어 있기때문에 ds로 받는다
			conn = ds.getConnection();
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

	public AccountDTO mapping(ResultSet rs) throws SQLException {
		AccountDTO row = new AccountDTO();
		
		row.setEmail(rs.getString("email"));
		row.setIdx(rs.getInt("idx"));
		row.setJoin_date(rs.getDate("join_date"));
		row.setNick(rs.getString("nick"));
		row.setUserid(rs.getString("userid"));
		row.setUserpw(rs.getString("userpw"));
		
		return row;
	}
	
	public List<AccountDTO> selectAll() {
		String sql = "select * from account order by idx desc";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<AccountDTO> list = new ArrayList<AccountDTO>();
			
			while (rs.next()) {
				list.add(mapping(rs));
			}
			
			return list;
			
		} catch(SQLException e) {
			System.out.println("select 예외 : " + e.getMessage());
			
 		} finally {
 			close();
 		}
		
		return null;
	}
	
	public AccountDTO selectOne(AccountDTO input) {
		String sql = "select * from account "
						+ "where userid = ? and userpw = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			AccountDTO row = mapping(rs);
			
			return row;
			
		} catch(SQLException e) {
			System.out.println("selectOne 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public int delete(AccountDTO input) {
		String sql = "delete from account where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, input.getIdx());
			
			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("delete 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int insert(AccountDTO input) {
		String sql = "insert into " + 
						"account(userid, userpw, nick, email)\r\n" + 
						"values(?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			pstmt.setString(3, input.getNick());
			pstmt.setString(4, input.getEmail());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("insert 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int update(AccountDTO input) {
		String sql = "update account " + 
						"set userpw=?, email=? " + 
						"where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserpw());
			pstmt.setString(2, input.getEmail());
			pstmt.setInt(3, input.getIdx());
			
			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("update 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	
	
	
}
