<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		Account acc = new Account("itbank", "it", "아뱅");
	%>
	
	<jsp:useBean id="user" class="beans.Account"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%-- 나머지는 ID/PW 비교~ --%>
	

</body>
</html>