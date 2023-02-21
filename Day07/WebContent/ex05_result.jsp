<%@page import="beans.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05_result.jsp</title>
</head>
<body>
	<%!
		User[] db = new User[] {
			new User("itbank", "it", "아뱅", "itbank@nvaer.com"),
			new User("user1", "1", "유저1", "user1@gmail.com"),
			new User("root", "qwe", "관리자", "root@icloud.com")
		};
	
		public User login(User user) {
			for (int i = 0; i < db.length; i++) {
				if (db[i].equals(user)) {
					return db[i];
				}
			}
			
			return null;
		}
	%>
	
	<jsp:useBean id="user" class="beans.User"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		user = login(user);
		String msg = "로그인 실패";
		
		if (user != null) {
			session.setAttribute("user", user);
			msg = "로그인 성공";
		}
	%>
	
	<h1>로그인 결과</h1>
	<hr>
	
	<h3><%=msg %></h3>
	
	<a href="ex05.jsp">
		<button>ex05</button>
	</a>

</body>
</html>