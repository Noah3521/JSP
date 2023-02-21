<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1_result.jsp</title>
</head>
<body>
	<%
		String sn1 = request.getParameter("n1");
		String sn2 = request.getParameter("n2");
		
		int n1 = Integer.parseInt(sn1);
		int n2 = Integer.parseInt(sn2);
	%>

	<h1>결과</h1>
	<hr>
	
	<ul>
		<li>n1 = <%=n1 %></li>
		<li>n2 = <%=n2 %></li>
		<li>n1 + n2 = <%=n1 + n2 %></li>
	</ul>

	<a href="quiz1.jsp">
		<button>quiz1</button>
	</a>

</body>
</html>