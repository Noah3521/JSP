<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2.jsp</title>
</head>
<body>
	<h1>JSTL 종류</h1>
	<hr>
	
	<ol>
		<li>core : 핵심. Attrribute 선언/해제, 조건문/반복문 등을 지원
		<li>fmt : format 형태, 날짜 및 숫자의 형태를 지정</li>
		<li>funtion : 문자열 처리에 관련 함수를 제공
		<li>sql : DB조회/추가/수정/삭제를 제공</li>
		<li>xml : DB전환/추가/수정/삭제를 제공</li>
	</ol>
	
	<h4>1. core 예시</h4>
	
	<c:if test="true">
		<p>test 속성에 true가 들어가면 태그 내의 구문을 수행</p>
		<p>true 외에 데이터는 모두 거짓으로 취급</p>
	</c:if>
	
	<h4>2. fmt 예시</h4>
	
	<fmt:setLocale value="fr-fr"/>
	<fmt:formatNumber value="100000000" type="currency"/>
	

</body>
</html>