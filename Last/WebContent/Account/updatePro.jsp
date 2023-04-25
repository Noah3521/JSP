<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<jsp:useBean id="input" class="beans.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<jsp:useBean id="dao" class="model.AccountDAO"/>
	<c:set var="row" value="${dao.update(input) }"/>

	<script>
		var row = ${row};
		
		if (row != 0) {
			alert('수정 완료');
			location.href = '${cpath}/Account/logout.jsp';
		}
		else {
			alert('정보 수정 실패');
			history.go(-1);
		}
	</script>

</body>
</html>