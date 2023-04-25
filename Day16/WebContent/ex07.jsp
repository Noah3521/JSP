<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07.jsp</title>
</head>
<body>
	<h1>core - 반복문3</h1>
	<hr>
	
	<h4>1. 중첩 반복</h4>
	<c:forEach var="i" begin="1" end="3">
		<p>
			<c:forEach var="j" begin="1" end="5">${j } </c:forEach>
		</p>
	</c:forEach>
	
	<h4>2. 역순 반복</h4>
	
	<%-- step은 음수를 작성할 수 없다 --%>
	<c:forEach var="i" begin="1" end="5">
		<p>${6 - i } : Hello JSTL</p>
	</c:forEach>
	
	<h4>3. 역순 활용</h4>
	
	<select>
		<c:forEach var="i" begin="1900" end="2023">
			<option>${(1900+2023)-i }</option>
		</c:forEach>
	</select>년
	
	<select>
		<c:forEach var="i" begin="1" end="12">
			<option>${i }</option>
		</c:forEach>
	</select>월
	
	<select>
		<c:forEach var="i" begin="1" end="31">
			<option>${i }</option>
		</c:forEach>
	</select>일
</body>
</html>