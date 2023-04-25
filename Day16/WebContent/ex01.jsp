<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>JSTL</h1>
	<hr>
	
	<h4>JSP Standard Tag Library</h4>
	
	<ul>
		<li>JSP는 HTML과 Java라는 서로 다른 언어가 혼합된 페이지</li>
		<li>따라서, 코드가 복잡하기 때문에 가독성이 떨어진다</li>
		<li>JSP 내에서 Java의 구문을 최대한 줄이기 위해서 고안되었다</li>
	</ul>
	
	
	<h4>과정</h4>
	
	<ol>
		<li>커스텀 태그 : 자바의 코드를 태그로 구성해서 사용하는 방식</li>
		<li>커스텀 태그 라이브러리 : 커스텀 태그를 다른이가 사용할 수 있게 배포한 형태
		
			<ul>
				<li>커스텀이다 보니 표준이 없다</li>
				<li>표준이 없다 보니 비슷한 기능인데도 서로 문법이 다른거나 할 수 있다</li>
			</ul>
		</li>
		
		<li>JSTL : 사람들이 자주 사용하는 태그를 모아서 표준화해서 배포한 형태</li>
	</ol>
	
</body>
</html>