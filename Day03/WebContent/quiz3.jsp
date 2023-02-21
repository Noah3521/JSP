<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz3.jsp</title>
</head>
<body>
	<%--
		jsp 태그들을 활용해서
		구구단 4단을 테이블로 출력한다
		단, x1 ~ x9까지만
	 --%>
	 
	<h1>quiz</h1>
	<hr>
	
	<table border="1" cellspacing="0" cellpadding="10">
		<tr>
			<th>연산식</th>
			<th>결과</th>
		</tr>
		
		<% for (int i = 1; i <= 9; i++) { %>
		<tr>
			<td>4 x <%=i %></td>
			<td><%=4 * i %></td>
		</tr>
		<% } %>
	</table>
	


</body>
</html>