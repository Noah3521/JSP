<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage.jsp</title>
</head>
<body>
	<%
		Account user = (Account) session.getAttribute("user");
		
		if (user == null) {
			user = new Account();
		}
	%>
	
	<h1>마이 페이지</h1>
	<hr>
	
	<table border="1" cellspacing="0" cellpadding="5">
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
			<th>성함</th>
			<td><%=user.getName() %></td>
		</tr>
	</table>
	
	<br>
	
	<a href="home.jsp">
		<button>홈으로</button>
	</a>

</body>
</html>