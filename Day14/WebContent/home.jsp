<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<%
		AccountDAO dao = new AccountDAO();
		String ver = dao.test();
	%>
	
	<h3>DataBase Connection Pooling</h3>
	<h4>버전 : <%=ver %></h4>
	
	<ul>
		<li>서버 실행시 미리 커넥션을 일정량 생성해 두는 기법</li>
		<li>생성한 커넥션은 Pool이라는 공간에 저장되어 있다</li>
		<li>커넥션이 필요하면 Pool에 꺼내 쓰고 반납하는 방식을 취한다</li>
		<li>이를 통해 DB접근을 효율적으로 사요할 수 있게 한다</li>
	</ul>
	

</body>
</html>