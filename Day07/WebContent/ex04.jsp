<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<%
		// void setAttribute(String name, Object value)
		// - name : 저장할 이름
		// - value : 저장할 데이터 (Object 타입이므로 어떠한 클래스든 받을 수 있다)
		pageContext.setAttribute("h1", "홍길동");
		request.setAttribute("h2", "김진호");
		session.setAttribute("h3", "이호찬");
		application.setAttribute("h4", "강수진");
	%>
	
	
	<h1>pageScope - 실습</h1>
	<hr>
	
	<ol>
		<%-- Object getAttribute(String name) --%>
		<li>페이지 : <%=pageContext.getAttribute("h1") %></li>
		<li>리퀘 : <%=request.getAttribute("h2") %></li>
		<li>세션 : <%=session.getAttribute("h3") %></li>
		<li>앱 : <%=application.getAttribute("h4") %></li>
	</ol>
	
	<a href="ex04_result.jsp">
		<button>페이지 전환</button>
	</a>
	
	
	<%-- form에서 action을 생략하면 자기 자신의 페이지로 전달됨 --%>
	<form>
		<input name="forward" type="hidden" value="yes">
		<button>포워드</button>
	</form>
	
	<%
		// 1. 포워드 버튼을 누르면 forward 파라미터가 전달된다
		String forward = request.getParameter("forward");
		
		// 2. 파라미터가 있으면 아래 포워드 구문을 수행한다
		if ("yes".equals(forward)) {
			RequestDispatcher rd = 
					request.getRequestDispatcher("ex04_result.jsp");
			
			rd.forward(request, response);
		}
	%>

</body>
</html>