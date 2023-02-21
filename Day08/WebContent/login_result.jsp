<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_result.jsp</title>
</head>
<body>
	<%!
		Account[] db = new Account[] {
			new Account("user1", "1", "유저1", "홍길동"),
			new Account("naver", "1234", "쥬니어", "김진호"),
			new Account("google", "you", "유튜브", "이호진"),
		};
	
		public Account login(Account user) {
			for (int i = 0; i < db.length; i++) {
				if (db[i].equals(user)) {
					return db[i];
				}
			}
			
			return null;
		}
	%>

	<jsp:useBean id="user" class="beans.Account"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		user = login(user);
		int isLogin = 0;		// 로그인 실패 (0 == false)
	
		if (user != null) {
			session.setAttribute("user", user);
			isLogin = 1;		// 로그인 성공 (1 == true)
		}
	%>
	
	<script>
		if (<%=isLogin %> == 1) {
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