<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
</head>
<body>
	<h1>Quiz1</h1>
	<hr>
	<form>
		<input name="num" placeholder="정수 입력" required>
		<button>전송</button>
	</form>
	<hr>
	<c:if
		test="${param.num % 5==0 and param.num % 9==0 and param.num!=null}">
		<h3>결과</h3>
		
		<p>${param.num}는 5와 9의 공배수</p>
	</c:if>
</body>
</html>