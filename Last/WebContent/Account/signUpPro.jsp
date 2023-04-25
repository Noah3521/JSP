<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<jsp:useBean id="input" class="beans.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<jsp:useBean id="dao" class="model.AccountDAO"/>
	<c:set var="row" value="${dao.insert(input) }"/>

	<script>
		var row = ${row};
		
		if (row != 0) {
			alert('회원 가입을 환영합니다');
			location.href = '${cpath}';
		}
		else {
			alert('회원 가입 실패');
			history.go(-1);
		}
	</script>

</body>
</html>