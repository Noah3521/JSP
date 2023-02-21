<%@page import="model.BookDTO"%>
<%@page import="java.util.List"%>
<%@page import="model.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<%
		BookDAO dao = new BookDAO();
		String ver = dao.test();
		List<BookDTO> list = dao.selectAll();
	%>

	<h1>DAO</h1>
	<hr>
	
	<h3>DataBase Access Object</h3>
	
	<ul>
		<li>DB에 접근하고자 메번 jsp 파일에 접속 정보를 작성하면 비효율적</li>
		<li>코드가 길어지고 가독성 및 재사용성 저하 -> 불편하다</li>
		<li>이를 재사용하고자 작성한 클래스는 DAO라고 한다</li>
	</ul>
	
	<h3>Oracle 버전 : <%=ver %></h3>
	
	<%-- Book 테이블을 DAO를 활용해서 띄워본다 --%>
	
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