<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp</title>
</head>
<body>
	<%
		String[] arr = new String[] {"java", "C++", "JSP", "Python", "Spring"};
	
		pageContext.setAttribute("arr", arr);
	%>

	<h1>core - 반복문</h1>
	<hr>
	
	<h4>1. 일반 for문</h4>
		
	<c:forEach var="i" begin="1" end="10" step="2">
		<%-- 여기의 var는 pageContext에 저장된다 --%>
		<%-- step은 생략시 자동으로 1 --%>
		<p>${i} : Hello JSP!</p>
	</c:forEach>
	
	<h4>2. for-each문</h4>
	
	<c:forEach var="sub" items="${arr }">
		<p>sub = ${sub }</p>
	</c:forEach>
</body>
</html>