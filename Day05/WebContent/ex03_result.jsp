<%@page import="beans.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_result.jsp</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>

	<jsp:useBean id="input" class="beans.Member"/>
	<%-- Member input = new Member(); --%>
	<%-- 위의 주석과 동일한 구문. 즉, 객체를 생성하는 jsp태그 --%>
	
	<jsp:setProperty property="*" name="input"/>
	<%-- setter 사용하는 구문이고 --%>
	<%-- *는 파라미터를 필드명과 같은 곳에 모두 저장하는 구문 --%>
	

	<h1>결과</h1>
	<hr>
	
	<ul>
		<li>아이디 : <%=input.getUserid() %></li>
		<li>패스워드 : <%=input.getUserpw() %></li>
		<li>닉네임 : <%=input.getNick() %></li>
		<li>이름 : <%=input.getName() %></li>
		<li>나이 : <%=input.getAge() %></li>
		<li>연락처 : <%=input.getPhone() %></li>
	</ul>
	
	<a href="ex03.jsp">
		<button>ex03</button>
	</a>

</body>
</html>