<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1_success.jsp</title>
</head>
<body>
	<h1>로그인 성공</h1>
	<hr>
	
	<h3><%=request.getParameter("userid") %>님 로그인</h3>
	
	<ul>
		<li>리다이렉트는 클라이언트가 재요청을 하게 한다</li>
		<li>Parameter는 요청에 담겨있고 재요청시 새로 생성됨</li>
		<li>따라서, 리다이렉트시 유지가 될 수 없다</li>
	</ul>
	
	<a href="quiz1.jsp">
		<button>quiz1</button>
	</a>

</body>
</html>