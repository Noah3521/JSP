<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<h1>pageScope 4가지</h1>
	<hr>
	
	<ul>
		<li>JSP에 제공하는 내장 객체</li>
		<li>다양한 기능이 있지만 그 중 개발자가 데이터를 저장할 공간을 제공</li>
		<li>그 공간을 Attribute라고 부른다</li>
	</ul>
	
	
	<h4>종류</h4>
	
	<ol>
		<li>pageContext : 현재 페이지에서만 유지가 되는 객체. 다른 페이지로 이동시 새로 생성된다</li>
		<li>request : pageContext와 동일한 수명. 단, 포워드시 다른 페이지에서도 유지</li>
		<li>session : 웹 브라우저가 모두 종료될 때까지 유지</li>
		<li>application : 웹 서버가 종료될 때까지 유지</li>
	</ol>

</body>
</html>