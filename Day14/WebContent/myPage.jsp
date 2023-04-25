<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<% 
		// 세션이 없으면 NullPointerException 예외 발생
		if (user == null) {
			user = new AccountDTO();
			response.sendRedirect("login.jsp");
		}
	%>

	<form action="update.jsp" method="POST">
		<table>
			<tr>
				<th>IDX</th>
				<td><%=user.getIdx() %></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><%=user.getUserid() %></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input name="userpw" type="password" required></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><%=user.getNick() %></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input name="email" type="email" required value="<%=user.getEmail() %>"></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><%=user.getJoin_date() %></td>
			</tr>
		</table>
		
		<input name="idx" type="hidden" value="<%=user.getIdx() %>">
		
		<br>
		
		<button>수정</button>
		<button type="button" onclick="del()">탈퇴</button>
	</form>
	
	<script>
		function del() {
			var yes = confirm("주의!) 탈퇴시 모든 정보는 제거되며 복구가 불가능합니다");
			
			if (yes) {
				location.href = 'delete.jsp?idx=' + <%=user.getIdx() %>;
			}
		}
	</script>
</body>
</html>