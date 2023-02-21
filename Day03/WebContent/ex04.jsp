<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<%@page import="java.util.Date, java.text.SimpleDateFormat"%>

	<%
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 a HH:mm:ss E");
		
		String time = sdf.format(date);
	%>
	
	
	<h1>지시자</h1>
	<hr>
	
	<h3>현재 시간 : <%=date %></h3>
	<h3>현재 시간 : <%=time %></h3>

</body>
</html>