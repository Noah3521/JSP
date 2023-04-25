<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<jsp:useBean id="dao" class="model.BoardDAO"/>
	<c:set var="row" value="${dao.selectOne(param.idx) }"/>

	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<td colspan="6">${row.idx }. ${row.title }</td>
		</tr>
		
		<tr>
			<th>작성자</th>
			<td>${row.writer }</td>
			
			<th>조회수</th>
			<td>${row.view_count }</td>
			
			<th>작성일</th>
			<td>${row.write_date }</td>
		</tr>
		
		<tr>
			<td colspan="6"><pre>${row.contents }</pre></td>
		</tr>
	
	</table>
	
	<c:if test="${row.writer == user.nick }">
		<br>
		
		<button onclick="location.href='update.jsp?idx=${row.idx }'">
			수정
		</button>
		<button onclick="location.href='delete.jsp?idx=${row.idx }'">
			삭제
		</button>
	</c:if>

<%@ include file="../footer.jsp" %>