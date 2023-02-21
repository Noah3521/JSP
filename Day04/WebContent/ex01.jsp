<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%--
		HTTP 요청 메서드
		1. GET
		- 대부분 요청은 GET으로 이루어진다
		- 요청/응답 속도가 가장 빠르다
		- 단, 파라미터 전송을 URL에 담아서 보내기 때문에 노출된다
		- 파라미터 전송 길이에 제한이 있다
		
		2. POST
		- 파라미터를 HTTP Header라는 부분에 담아서 보낸다
		- 따라서, 주소창에는 노출되지 않는다
		- 단, GET보단 조금 느리다
		- 파라미터 전송 길이에 딱히 제한이 없다
	--%>

	<h1>form 태그</h1>
	<hr>
	
	<form action="ex01_result.jsp" method="POST">
		<p><input name="userid" placeholder="아이디" required></p>
		<p><input name="userpw" type="password" placeholder="패스워드" required></p>
		<p><input name="name" placeholder="이름" required></p>
		
		<button>전송</button>
	</form>

</body>
</html>