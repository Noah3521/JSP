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
	
		String save = request.getParameter("save");
		int isLogin = 0;		// 로그인 실패 (0 == false)
	
		if (user != null) {
			session.setAttribute("user", user);
			isLogin = 1;		// 로그인 성공 (1 == true)
			
			// 쿠키 코드
			Cookie[] cs = new Cookie[] {
				new Cookie("userid", user.getUserid()),
				new Cookie("userpw", user.getUserpw()),
				new Cookie("save", "checked")
			};
			
			for (int i = 0; i < cs.length; i++) {
				cs[i].setMaxAge(0);
				
				if ("yes".equals(save)) {
					cs[i].setMaxAge(60 * 60 * 24);
				}
				
				response.addCookie(cs[i]);
			}
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