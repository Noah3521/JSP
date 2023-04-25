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
	<jsp:useBean id="input" class="model.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		AccountDTO user = dao.selectOne(input);
		int success = 0;
		
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