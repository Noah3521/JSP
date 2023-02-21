<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BookDTO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%
		// 1. 준비물
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "c##itbank";
		String password = "it";
		
		Connection conn;	// DB에 접속 및 유지하는 객체
		Statement stmt;		// SQL 구문을 실행할 객체
		ResultSet rs;		// talbe의 결과를 저장할 객체
		
		
		// 2. 드라이버 로딩
		Class.forName(driver);
		
		// 3. 접속 및 실행
		String sql = "select * from book order by idx desc";
		
		conn = DriverManager.getConnection(url, user, password);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		// 테이블 전체 행을 저장할 List
		List<BookDTO> list = new ArrayList<BookDTO>();
		
		while (rs.next()) {		// 커서를 다음으로 이동. 없으면 false -> 반복 종료
			
			// 테이블 한 행을 가져와 저장할 DTO
			BookDTO row = new BookDTO();
			
			row.setIdx(rs.getInt("idx"));
			row.setTitle(rs.getString("title"));
			row.setWriter(rs.getString("writer"));
			row.setPublisher(rs.getString("publisher"));
			row.setPublish_date(rs.getDate("publish_date"));
			row.setPrice(rs.getInt("price"));
		
			// 가져온 gks 행을 list에 추가
			list.add(row);
		}
		
		
		// 4. 실행 후 접속은 꼭 닫아준다 (역순으로)
		rs.close();
		stmt.close();
		conn.close();
		
	%>

	<h1>JDBC</h1>
	<hr>
	
	<h3>Java DataBase Connectivity</h3>
	
	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<th>책 번호</th>
			<th>제목</th>
			<th>저자</th>
			<th>출판사</th>
			<th>출판일</th>
			<th>가격</th>
		</tr>
		
		<% for (BookDTO row : list) { %>
		<tr>
			<td><%=row.getIdx() %></td>
			<td><%=row.getTitle() %></td>
			<td><%=row.getWriter() %></td>
			<td><%=row.getPublisher() %></td>
			<td><%=row.getPublish_date() %></td>
			<td><%=row.getPrice() %></td>
		</tr>
		<% } %>
	</table>
	

</body>
</html>