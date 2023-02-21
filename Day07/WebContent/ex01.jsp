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
		서버에서 응답할 페이지를 변경하는 기법으로 2가지가 있다
		1. redirect : 클라이언트에게 이동할 페이지를 알려주고, 클라이언트는 해당 페이지로 재요청을 진행
		2. forward : 서버 내에서 응답할 페이지가 바뀐다. 따라서 클라이언트는 페이지 바뀐것을 알아치리지 못한다
		
		※ 가장 큰 차이는 '재요청' 여부
		- redirect는 재요청을 하기 때문에 request가 유지 되지 않는다
		- forward 재요청 없이 서버내에서 페이지가 전환되고 이때 request가 유지되게 되어 있다

		forward의 사용 이유
		- 요청하는 페이지와 응답하는 페이지가 별도로 관리되어야 하는 경우
		ex) MVC2, Spring-MVC 같은 웹 디자인 패턴에서 사용된다
		
		※ 우리 JSP 수업은 MVC1 입니다
	 --%>
	 
	<%
		// 1. 요청 전달자 객체를 request로 부터 받는다. 이때 경로를 지정
		RequestDispatcher rd =  request.getRequestDispatcher("result.jsp");
	
		// 2. 생성한 객체 rd를 가지고 forward를 수행하면 지정한 페이지로 이동된다
		// - 이때, 요청/응답을 같이 담아서 보내주고 해당 페이지에서 그대로 유지가 된다
		rd.forward(request, response);
	%>

</body>
</html>