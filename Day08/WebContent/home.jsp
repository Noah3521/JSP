<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
</head>
<body>
	<%--
		Account.java		ID/PW/닉네임/이름을 가진 Java Beans
		
		home.jsp			로그인 상태일 경우 계정의 닉네임을 출력
		
		login.jsp			로그인 페이지. ID/PW를 입력 받아서
							login_result.jsp로 POST 방식으로 전달
						
		login_result.jsp	계정을 몇개 선언부에 생생해 두고,
							전달 맏은 계정이랑 비교 후 로그인 성공시 세션에 저장
						
		myPage.jsp			현재 접속 중인 계정의 모든 정보를 테이블로 출력
		
		logout.jsp			로그아웃 페이지
	 --%>

	<%
		Account user = (Account) session.getAttribute("user");
	
		String nick = "없음";
		
		if (user != null) {
			nick = user.getNick();
		}
	%>


	<h1>Day08 - HOME</h1>
	<hr>
	
	<h3>구현할 목록</h3>
	
	<ul>
		<li>현재 접속 : <%=nick %></li>
		<li><a href="login.jsp">로그인</a></li>
		<li><a href="logout.jsp">로그아웃</a></li>
		<li><a href="myPage.jsp">마이페이지</a></li>
	</ul>

</body>
</html>