<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<c:set var="hong" value="홍길동" scope="page"/>			<%-- pageContext.setAttribute("hong", "홍길동"); --%>
	
	<c:set var="kim" value="김수진"/>							<%-- scope="page"는 기본값이라 생략 가능 --%>
	
	<c:set var="lee" value="이수진" scope="request"/>			<%-- request.setAttribute("lee", "이수진"); --%>
	
	<c:set var="park" value="박현진" scope="session"/>		<%-- session.setAttribute("park", "박현진"); --%>
	
	<c:set var="jang" value="장동건" scope="application"/>	<%-- application.setAttribute("jang", "장동건"); --%>

	<ul>
		<li>hong : ${ hong }</li>
		<li>kim : ${kim }</li>
		<li>lee : ${lee }</li>
		<li>park : ${park }</li>
		<li>jang : ${jang }</li>
	</ul>

	<a href="ex03_result.jsp">
		<button>리다이렉트</button>
	</a>

	<%-- 포워드 --%>
	<form>
		<input name="forword" type="hidden" value="yes">
		<button>포워드</button>
	</form>
	
	<%-- 포워드 실행 --%>
	<c:if test="${param.forward == 'yes' }">
		<jsp:forward page="ex03_result.jsp"/>
	</c:if>
	
	

</body>
</html>