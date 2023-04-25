<%@page import="model.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
	<%
		AccountDTO user = (AccountDTO) session.getAttribute("user");
		String nick = "없음";
		
		if (user != null) {
			nick = user.getNick() + " 님";
		}
	%>

	<h1>Account 테이블</h1>
	<hr>
	
	<h3>현재 접속 : <%=nick %></h3>
	
	<ul>
		<li><a href="home.jsp">Home</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="logout.jsp">Logout</a></li>
		<li><a href="signUp.jsp">SignUp</a></li>
		<li><a href="myPage.jsp">MyPage</a></li>
	</ul>