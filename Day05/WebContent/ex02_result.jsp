<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_result.jsp</title>
</head>
<body>
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		String height = request.getParameter("height");
		String gender = request.getParameter("gender");
		
		// String hobby = request.getParameter("hobby");
		String[] hobbys = request.getParameterValues("hobby");
		String hobby = Arrays.toString(hobbys);
		// - hobby는 같은 이름으로 여러개의 데이터가 전송된다
		// - 이때 배열로 모두 받을 수 있는 getParameterValues()를 사용
		// ※ toString() 메서드는 배열의 모든 요소를 문자열로 반환
		
		String file = request.getParameter("file");
		String major = request.getParameter("major");
		String info = request.getParameter("info");
	%>
	
	<h1>결과</h1>
	<hr>
	
	<h3>1. getParameter()</h3>
	
	<ul>
		<li><%=userid %></li>
		<li><%=userpw %></li>
		<li><%=email %></li>
		<li><%=birth %></li>
		<li><%=height %></li>
		<li><%=gender %></li>
		<li><%=hobby %></li>
		<li><%=file %></li>
		<li><%=major %></li>
		<li><%=info %></li>
	</ul>
	
	
	<hr>
	
	<h3>2. getParameterNames()</h3>
	
	<%
		Enumeration<String> en = request.getParameterNames();
		// - 파라미터의 이름만 모두 받아오는 메서드
		// - Enumberation은 Iterator의 하위 버전
		
		out.println("<ul>");
		
		while (en.hasMoreElements()) {
			String name = en.nextElement();
			out.println("<li>" + name + "</li>");
		}
		
		out.println("</ul>");
	%>
	
	
	<hr>
	
	<h3>3. getParameterMap()</h3>
	
	<%
		Map<String, String[]> map = request.getParameterMap();
		// - 모든 파라미터의 이름과 값을 반환
		// - key에는 이름, value에는 값이 저장되어 있다
		
		Set<String> keys = map.keySet();
		
		
		out.println("<ul>");
		
		for (String k : keys) {
			String[] values = map.get(k);
			String v = Arrays.toString(values);
			
			out.println("<li>" + k + " : " + v + "</li>");
		}
		
		out.println("</ul>");

	%>
	
	

</body>
</html>