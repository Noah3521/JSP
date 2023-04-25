<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<form action="updatePro.jsp" method="POST">
		<table border="1" cellspacing="0" cellpadding="5">
			<tr>
				<th>idx</th>
				<td>${user.idx }</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${user.userid }</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input name="userpw" type="password" required></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${user.nick }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input name="email" type="email" value="${user.email }" required></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${user.join_date }</td>
			</tr>
		</table>
		
		<br>
		
		<input name="idx" type="hidden" value="${user.idx }">
		
		<button>수정</button>
		<button type="button" onclick="location.href = 'delete.jsp'">삭제</button>
		
	</form>
	

<%@ include file="../footer.jsp" %>