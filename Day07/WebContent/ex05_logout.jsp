<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05_logout.jsp</title>
</head>
<body>
	<%
		session.removeAttribute("user");
	%>

	<h1>로그아웃</h1>
	<hr>
	
	<h3>로그아웃 되었습니다~</h3>
	
	<a href="ex05.jsp">
		<button>ex05</button>
	</a>
	
	

</body>
</html>