<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>
	<h1>jsp 기초</h1>
	<hr>
	
	<p>jsp 태그들은 짤라서 사용 가능</p>
	
	<ul>
		<% for (int i = 1; i <= 10; i++) { %>
		
		<li><%=i %> : Hello jsp~</li>
		
		<% } %>
	</ul>


</body>
</html>