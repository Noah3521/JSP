<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2</title>
</head>
<body>
	<h1>Quiz2</h1>
	<hr>

	<form>
		<input name="num" placeholder="몇단?" required>
		<button>전송</button>
	</form>

	<c:if test="${param.num!=null and param.num>0 and param.num < 10}">
		<h4>${param.num }단:</h4>
		<c:forEach var="j" begin="1" end="9">
			<p>${param.num }X ${j } = ${param.num*j }</p>
		</c:forEach>
		<br>
	</c:if>

	<c:forEach var="i" begin="1" end="9">
		<h4>${i }단:</h4>
		<c:forEach var="j" begin="1" end="9">
			<p>${i }X ${j } = ${i*j}</p>
		</c:forEach>
	</c:forEach>
</body>
</html>