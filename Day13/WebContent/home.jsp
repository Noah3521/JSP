<%@page import="model.AccountDTO"%>
<%@page import="java.util.List"%>
<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%-- include는 다른 jsp 파일을 불러와서 컴파일한다. 즉, 합쳐서 실행 --%>
	
	<%
		AccountDAO dao = new AccountDAO();
		List<AccountDTO> list = dao.selectAll();
	%>
	
	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<th>idx</th>
			<th>아이디</th>
			<th>패스워드</th>
			<th>닉네임</th>
			<th>이메일</th>
			<th>가입일</th>
		</tr>
		
		<% for (AccountDTO row : list) { %>
		<tr>
			<td><%=row.getIdx() %></td>
			<td><%=row.getUserid() %></td>
			<td><%=row.getUserpw() %></td>
			<td><%=row.getNick() %></td>
			<td><%=row.getEmail() %></td>
			<td><%=row.getJoin_date() %></td>
		</tr>
		<% } %>
	</table>

</body>
</html>