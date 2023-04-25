<%@page import="model.AccountDTO"%>
<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="model.AccountDTO"/>
	<jsp:setProperty property="*" name="user"/>

	<%
		AccountDAO dao = new AccountDAO();
		int success = 0;
		user = dao.selectOne(user);
		
		if (user != null) {
			session.setAttribute("user", user);
			success = 1;
		}
	%>
	
	<script>
		var success = <%=success %>;
	
		if (success == 1) {
			alert('로그인 성공');
			location.href = 'home.jsp';
		}
		else {
			alert('로그인 실패');
			history.go(-1);
		}
	</script>

</body>
</html>