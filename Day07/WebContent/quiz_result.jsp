<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz_result.jsp</title>
</head>
<body>
	<%!
		Account[] accs = new Account[] {
			new Account("itbank", "it"),
			new Account("user1", "1234"),
			new Account("google", "go")
		};
	
		public Account login(Account user) {
			for (int i = 0; i < accs.length; i++) {
				if (accs[i].equals(user)) {
					return accs[i];
				}
			}
			
			return null;
		}
	%>
	
	<jsp:useBean id="user" class="beans.Account"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		user = login(user);
		
		if (user != null) {
			RequestDispatcher rd = 
					request.getRequestDispatcher("quiz_success.jsp");
			
			rd.forward(request, response);
		}
		else {
			response.sendRedirect("quiz_fail.jsp");			
		}
	%>

</body>
</html>