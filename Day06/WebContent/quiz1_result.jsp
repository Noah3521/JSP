<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		Account[] accs = new Account[] {
			new Account("user1", "1234", "유저1"),
			new Account("naver", "blog", "네이버"),
			new Account("google", "you", "구글")
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
		String site = "quiz1_fail.jsp";
		
		if (user != null) {
			site = "quiz1_success.jsp";
		}
		
		response.sendRedirect(site);
	%>

</body>
</html>