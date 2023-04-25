<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<% request.setCharacterEncoding("utf-8"); %>

	<jsp:useBean id="input" class="model.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		int row = dao.insert(input);
	%>

	<script>
		var row = <%=row %>;
		
		if (row != 0) {
			alert('가입 성공');
			location.href = 'home.jsp';
		}
		else {
			alert('가입 실패');
			history.go(-1);
		}
	</script>
</body>
</html>