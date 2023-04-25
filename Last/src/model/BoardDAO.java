package model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.BoardDTO;
import service.Paging;

public class BoardDAO extends DAO {
	public int totalCount() {
		String sql = "select count(*) as total from board";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getInt("total");
			
		} catch (SQLException e) {
			System.out.println("totalCount() 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int totalCount(String type, String search) {
		String sql = "select count(*) as total from board "
						+ "where " + type + " like '%" + search + "%'";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getInt("total");
			
		} catch (SQLException e) {
			System.out.println("totalCount() 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	public Map<String, Object> selectAll(Integer reqPage) {
		String sql = "select * from board " + 
						"order by idx desc " + 
						"offset ? rows " + 
						"fetch first ? rows only";
		
		if (reqPage == null) { reqPage = 1; }
		
		Paging p = new Paging(reqPage, totalCount());
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, p.getOffset());
			pstmt.setInt(2, p.getPerCount());
			
			rs = pstmt.executeQuery();
			
			List<BoardDTO> list = new ArrayList<BoardDTO>();
			
			while (rs.next()) {
				BoardDTO row = new BoardDTO();
				
				row.setContents(rs.getString("contents"));
				row.setIdx(rs.getInt("idx"));
				row.setTitle(rs.getString("title"));
				row.setView_count(rs.getInt("view_count"));
				row.setWrite_date(rs.getDate("write_date"));
				row.setWriter(rs.getString("writer"));
				
				list.add(row);
			}
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);		// 게시글 List와
			map.put("p", p);			// 페이징 p를 map에 추가
			
			return map;
			
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}

	public Map<String, Object> selectAll(Integer reqPage, String type, String search) {
		String sql = "select * from board " + 
						"where " + type + " like '%" + search + "%' " +
						"order by idx desc " + 
						"offset ? rows " + 
						"fetch first ? rows only";
		
		if (reqPage == null) { reqPage = 1; }
		
		Paging p = new Paging(reqPage, totalCount(type, search));
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, p.getOffset());
			pstmt.setInt(2, p.getPerCount());
			
			rs = pstmt.executeQuery();
			
			List<BoardDTO> list = new ArrayList<BoardDTO>();
			
			while (rs.next()) {
				BoardDTO row = new BoardDTO();
				
				row.setContents(rs.getString("contents"));
				row.setIdx(rs.getInt("idx"));
				row.setTitle(rs.getString("title"));
				row.setView_count(rs.getInt("view_count"));
				row.setWrite_date(rs.getDate("write_date"));
				row.setWriter(rs.getString("writer"));
				
				list.add(row);
			}
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);		// 게시글 List와
			map.put("p", p);			// 페이징 p를 map에 추가
			
			return map;
			
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public BoardDTO selectOne(int idx) {
		String sql = "select * from board "
				+ "where idx = ?";
		
		coutUp(idx);
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			BoardDTO row = new BoardDTO();
			
			row.setContents(rs.getString("contents"));
			row.setIdx(rs.getInt("idx"));
			row.setTitle(rs.getString("title"));
			row.setView_count(rs.getInt("view_count"));
			row.setWrite_date(rs.getDate("write_date"));
			row.setWriter(rs.getString("writer"));
			
			return row;
			
		} catch (SQLException e) {
			System.out.println("selectOne 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public int coutUp(int idx) {
		String sql = "update board " + 
						"set view_count = view_count + 1 " + 
						"where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("countUp 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int insert(BoardDTO input) {
		String sql = "insert into "
						+ "board(title, contents, writer) "
						+ "values(?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());
			
			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("insert 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}

	public int delete(int idx) {
		String sql = "delete from board where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("delete 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		 
		return 0;
	}

	public int update(BoardDTO input) {
		String sql = "update board " + 
						"set title=?, contents=? " + 
						"where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setInt(3, input.getIdx());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("update 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
}
