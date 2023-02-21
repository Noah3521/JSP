<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello JSP~</h1>
	
	<%
		for (int i = 1; i <= 5; i++) {
			out.println("<p>" + i + " : JSP Test</p>");			
		}
	%>
</body>
</html>