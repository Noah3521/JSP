<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		// - POST 방식으로 한글을 받을땐, encoding 방식을 세팅해야 한글이 안깨짐
		// - GET은 굳이 작성할 필요 없다
	
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String name = request.getParameter("name");
		
		String encoding = request.getCharacterEncoding();
	%>


	<h1>결과</h1>
	<hr>
	
	<h3>인코딩 : <%=encoding %></h3>
	
	<ul>
		<li>ID : <%=userid %></li>
		<li>PW : <%=userpw %></li>
		<li>이름 : <%=name %></li>
	</ul>
	
	<a href="ex01.jsp">
		<button>ex01</button>
	</a>

</body>
</html>