<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06_result.jsp</title>
</head>
<body>
	
	<%
		// 사용자가 form에 작성한 데이터는
		// 파라미터라고 하여 request(요청)에 담겨져 넘어온다
		//
		// JSP는 이 요청을 처리하기 위해서 자체적으로 request라는 객체를 제공
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		// getParameter(이름)
		// - 지정한 파라미터명에 저장된 값을 가져온다
		// - 만약 해당 파리미터가 없으면 null을 반환
	%>
	
	<h1>결과</h1>
	<hr>
	
	<ul>
		<li>이름 : <%=name %></li>
		<li>나이 : <%=age %></li>
	</ul>
	
	<a href="ex06.jsp">
		<button>ex06</button>
	</a>
	
</body>
</html>