<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<jsp:useBean id="dao" class="model.AccountDAO"/>
	<c:set var="row" value="${dao.delete(user.idx) }"/>

	<script>
		var row = ${row};
		
		if (row != 0) {
			alert('탈퇴 완료');
			location.href = '${cpath}/Account/logout.jsp';
		}
		else {
			alert('탈퇴 실패');
			history.go(-1);
		}
	</script>

</body>
</html>