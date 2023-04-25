<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>결과 페이지</h1>
	<hr>
	
	<c:remove var="jang" scope="application"/>	<% application.removeAttribute("jang"); %>
												<%-- 이름이 겹치지 않으면 scope는 생략 가능 --%>

	<ul>
		<li>hong : ${ hong }</li>
		<li>kim : ${kim }</li>
		<li>lee : ${lee }</li>
		<li>park : ${park }</li>
		<li>jang : ${jang }</li>
	</ul>
	
	<a href="ex03.jsp">
		<button>ex03</button>
	</a>
</body>
</html>