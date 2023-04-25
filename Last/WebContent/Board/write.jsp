<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<c:if test="${empty user }">
		<c:redirect url="/Account/login.jsp"/>
	</c:if>

	<form action="writePro.jsp" method="POST">
		<table id="writeBoard" border="1" cellspacing="0" cellpadding="5">
			<tr>
				<th>제목</th>
				<td><input name="title" required></td>
			</tr>
			
			<tr>
				<td colspan="2"><textarea name="contents"></textarea></td>
			</tr>
		</table>
		
		<input name="writer" type="hidden" value="${user.nick }">
		
		<br>
		
		<button>작성</button>
	</form>

<%@ include file="../footer.jsp" %>