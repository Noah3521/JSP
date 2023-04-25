<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<%
		if (user == null) {
			user = new AccountDTO();
		}
	%>

	<h3>마이페이지</h3>
	
	
	<form action="update.jsp" method="POST">
		<table border="1" cellspacing="0" cellpadding="5">
			<tr>
				<th>idx</th>
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
			var isDel = confirm('정말로 탈퇴 하시겠습니까?');
			
			if (isDel) {
				location.href = 'delete.jsp?idx=' + <%=user.getIdx() %>;
			}
		}
	</script>

</body>
</html>