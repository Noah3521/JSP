<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<c:if test="${empty user }">
		<c:redirect url="/Account/login.jsp"/>
	</c:if>
	
	<jsp:useBean id="dao" class="model.BoardDAO"/>
	<c:set var="row" value="${dao.selectOne(param.idx) }"/>

	<form action="updatePro.jsp" method="POST">
		<table id="writeBoard" border="1" cellspacing="0" cellpadding="5">
			<tr>
				<th>제목</th>
				<td><input name="title" required value="${row.title }"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<textarea name="contents">${row.contents }</textarea>
				</td>
			</tr>
		</table>
		
		<input name="idx" type="hidden" value="${row.idx }">
		
		<br>
		
		<button>작성</button>
	</form>

<%@ include file="../footer.jsp" %>