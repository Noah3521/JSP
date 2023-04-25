<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>
	<h1>core - 조건문2</h1>
	<hr>

	<form>
		<p>
			<input name="name" placeholder="이름" required>
		</p>
		<p>
			<input name="age" type="number" placeholder="나이" required>
		</p>

		<button>전송</button>
	</form>

	<hr>

	<c:if test="${not empty param.age }">	
		<h3>결과</h3>
	
		<c:choose>
			<c:when test="${param.age >= 20 }">		<%-- if --%>
				<p>${param.name }님은 성인</p>
			</c:when>
			
			<c:when test="${param.age >= 17 }">		<%-- else if --%>
				<p>${param.name }님은 고등학생</p>
			</c:when>
			
			<c:when test="${param.age >= 14 }">		<%-- else if --%>
				<p>${param.name }님은 중학생</p>
			</c:when>
		
			<c:otherwise>							<%-- else --%>
				<p>${param.name }님은 초등학생 이하</p>	
			</c:otherwise>
		</c:choose>
	</c:if>
</body>
</html>