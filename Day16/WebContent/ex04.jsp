<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>

	<h1>core - 조건문</h1>
	<hr>
	
	<form>
		<p><input name="name" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		
		<button>전송</button>
	</form>
	
	<hr>
	
	<c:if test="${not empty param.age }">
		
	<h3>결과</h3>
	
	<ul>
		<li>이름 : ${param	.name }</li>
		<li>나이 : ${param.age }</li>
		
		<c:if test="${param.age >= 20}">
			<li>${param.name }님은 성인 입니다.</li>
		</c:if>
		
		<c:if test="${param.age < 20 }">
			<li>${param.name}님은 미성년자 입니다.</li>
		</c:if>
	</ul>
	</c:if>
</body>
</html>