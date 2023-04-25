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
	<%--
		정수 하나를 입력 받아서 현재 페이지에
		5와 9의 공배수이면 출력 
		
		JSTL과 EL을 꼭 활용할 것
	 --%>
	 
	<h1>Quiz1</h1>
	<hr>
	 
	<form>
		<input name="num" type="number" placeholder="정수 입력">
		<button>전송</button>
	</form>
	
	<c:if test="${not empty param.num }">
		<c:if test="${param.num % 5 == 0 && param.num % 9 == 0 }">
			<h3>결과</h3>
			
			<p>${param.num }는 5와 9의 공배수</p>
		</c:if>
	</c:if>
	

</body>
</html>