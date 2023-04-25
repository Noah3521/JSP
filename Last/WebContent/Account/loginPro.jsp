<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<%-- 계정을 받는다 --%>
	<jsp:useBean id="input" class="beans.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>

	<%-- DAO 생성 후 DB에 전달 --%>
	<jsp:useBean id="dao" class="model.AccountDAO"/>
	<c:set var="user" value="${dao.selectOne(input) }" scope="session"/>


	<%-- ※  value에 아무런 내용이 작성되지 않으면 attribute가 생성되지 않는다 --%>
	<%-- ※ EL은 null을 출력하지 않는다. 따라서 null이 반환되면 Attribute는 생성되지 않음 --%>

	<c:if test="${not empty user }">
		<c:redirect url="/"/>
	</c:if>
	
	<c:if test="${empty user }">
		<script>
			alert('일치하는 계정이 없습니다');
			history.go(-1);
		</script>
	</c:if>

</body>
</html>