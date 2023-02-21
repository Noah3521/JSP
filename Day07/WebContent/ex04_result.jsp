<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04_result.jsp</title>
</head>
<body>
	<h1>pageScope - 결과</h1>
	<hr>
	
	<ol>
		<%-- Object getAttribute(String name) --%>
		<li>페이지 : <%=pageContext.getAttribute("h1") %></li>
		<li>리퀘 : <%=request.getAttribute("h2") %></li>
		<li>세션 : <%=session.getAttribute("h3") %></li>
		<li>앱 : <%=application.getAttribute("h4") %></li>
	</ol>
	
	<a href="ex04.jsp">
		<button>ex04</button>
	</a>

</body>
</html>