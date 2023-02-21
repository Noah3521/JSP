<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%!	int n1 = 10; %>		<%-- 선언부 --%>
	<%  int n2 = 10; %>		<%-- 실행부 --%>

	<h1>지역 변수 VS 멤버 변수(= 필드)</h1>
	<hr>
	
	<h3>F5를 눌러서 새로고침 해보세요~</h3>
	
	<ul>
		<li>n1 = <%=n1++ %></li>
		<li>n2 = <%=n2++ %></li>
	</ul>
	
	
	<h3>결과</h3>
	
	<ul>
		<li>선언부 : 서버 실행 후 최초 요청시 생성되고, 서버 종료시 제거</li>
		<li>실행부 : 페이지를 요청시 생성되고, 페이지가 클라이언트에게 응답이되면 제거</li>
		<li>결론 : 선언부는 서버 종료까지 유지가되고, 실행부는 페이지 응답 후 즉시 제거됨</li>
	</ul>
	

</body>
</html>