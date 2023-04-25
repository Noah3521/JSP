<%@page import="model.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day14</title>

<style>
	.menu {
		list-style: none;
		padding: 0;
		display: flex;
	}
	
	.menu li {
		margin: 0 10px;
	}
	
	a {
		color: black;
		text-decoration: none;
	}
	
	a:hover {
		text-decoration: underline;
	}
	
	table {
		border-collapse: collapse;
	}
	
	th, td {
		border: 1px solid black;
		padding: 5px 10px;
	}
	
	.top {
		display: flex;
		justify-content: space-between;
	}
</style>
</head>
<body>
	<%
		AccountDTO user = (AccountDTO) session.getAttribute("user");
		String nick = "x";
		
		if (user != null) {
			nick = user.getNick();
		}
	%>

	<div class="top">
		<h1>DBCP</h1>
		
		<h5>접속 : <%=nick %></h5>
	</div>
	
	<ul class="menu">
		<li><a href="/Day14">Home</a></li>
		<li><a href="list.jsp">회원목록</a></li>
		<li><a href="login.jsp">로그인</a></li>
		<li><a href="logout.jsp">로그아웃</a></li>
		<li><a href="signUp.jsp">회원가입</a></li>
		<li><a href="myPage.jsp">내정보</a></li>
	</ul>
	
	<hr>
	
	