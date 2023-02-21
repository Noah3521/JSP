<%@page import="beans.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05_myPage.jsp</title>
</head>
<body>
	<%
		User user = (User) session.getAttribute("user");
	
		if (user == null) {
			user = new User();
			response.sendRedirect("ex05.jsp");
		}
	%>

	<h1>마이 페이지</h1>
	<hr>
	
	<table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<th>아이디</th>
			<td><%=user.getUserid() %></td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td><%=user.getUserpw() %></td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><%=user.getNick() %></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=user.getEmail() %></td>
		</tr>
	</table>
	
	<a href="ex05.jsp">
		<button>ex05</button>
	</a>
	
</body>
</html>