<%@page import="beans.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>
	<%
		// 1. 세션에 저장된 정보(= 로그인 정보)를 가져온다
		// - 만약 없다면 null이 반환된다
		User user = (User) session.getAttribute("user");
	
	
		// 2. 세션 여부에 따라서 화면에 출력할 데이터를 지정
		String nick = "없음";
		
		if (user != null) {
			nick = user.getNick();
		}
	%>

	<h1>session을 활용한 로그인 유지</h1>
	<hr>
	
	<ul>
		<li>현재 접속 : <%=nick %></li>
		
		<% if (user != null) { %>
			<li>
				<a href="ex05_myPage.jsp">마이페이지</a>
			</li>
			<li>
				<a href="ex05_logout.jsp">로그아웃</a>
			</li>
		<% } %>
	</ul>
	
	<form action="ex05_result.jsp" method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>
		
		<button>로그인</button>
	</form>

</body>
</html>