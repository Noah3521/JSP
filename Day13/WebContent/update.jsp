<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
	
	<jsp:useBean id="input" class="model.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<%
		AccountDAO dao = new AccountDAO();
		int row = dao.update(input);
	%>
	
	
	<script>
		var row = <%=row %>;
		
		if (row != 0) {
			alert('변경 완료');
			location.href = 'logout.jsp';
		}
		else {
			alert('변경 실패');
			history.go(-1);
		}
	
	</script>

</body>
</html>