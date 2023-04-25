<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>EL</h1>
	<p>Expression Language</p>
	<hr>
	
	<ul>
		<li>EL은 표현언어라고 하면 기존의 표현식 &lt;%= %>을 대체하기 위해서 고안된 문법</li>
		<li>기존의 표현식은 Attribute 접근이 매우 불편한 구조</li>
		<li>이를 좀 더 수월하게 접근하기 위해서 EL을 사용하게 됨</li>
		<li>EL은 Attribute 접근시 pageContext -> request -> session -> app 순으로 자동 탐색</li>
		<li>EL은 뒤에 배울 JSTL과 함께 사용시 시너지가 매우 좋다</li>
		<li>EL은 JSP2.0 이후 부턴 기본 문법으로 사용되기 때문에 라이브러리 추가가 필요 없음</li>
	</ul>

</body>
</html>