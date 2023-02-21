<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%
		// 웹 클라이언트는 서버 쪽으로 요청(request)를 보낸다
		// 서버는 이에 대한 응답(response)을 클라이언트로 보낸다
		//
		// JSP에서는 요청을 처리하기 위해서 request라는 내장 객체를 제공하고 있고,
		// 응답을 처리하기 위해서 response라는 내장 객체를 제공한다
		//
		// 요청은 주로 사용자가 필요하는 페이지 정보나, 입력 정보 등을 가지고 있고
		// 응답은 페이지 응답 방향 지정 및 쿠키, 에러 페이지를 지정할 수 있다
		
		// response.sendError(405);
		// - HTTP 상태 코드 중 4xx, 5xx 에러 코드를 클라이언트에 응답한다
		
		response.sendRedirect("result.jsp");
		// - 응답에 지정한 페이지로의 리다이렉트 메세지를 추가
		// - 리다이렉트 메세지를 받은 클라이언트는 해당 페이지로 '재요청'을 보낸다
		
	%>
</body>
</html>