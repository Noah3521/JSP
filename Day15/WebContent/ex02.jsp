<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="beans.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<%
		Student stu1 = new Student("홍길동", 81);
		Student stu2 = new Student("김진호", 94);
		Student stu3 = new Student("이수진", 89);
		
		// 1. 일반 객체 저장
		pageContext.setAttribute("stu1", stu1);
		request.setAttribute("stu1", stu2);
		session.setAttribute("stu3", stu3);
		
		// 2. 컬렉션 - List
		List<Student> list = new ArrayList<Student>();
		
		list.add(stu1);
		list.add(stu2);
		list.add(stu3);
		
		application.setAttribute("list", list);
		
		// 3. 컬렉션 - Map
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("stu1", stu1);
		map.put("stu2", stu2);
		map.put("stu3", stu3);
		
		pageContext.setAttribute("map", map);
	%>


	<h1>EL 활용 - Attribute</h1>
	<hr>

	<h4>표현식 사용시</h4>
	
	<ul>
		<li><%=((Student)pageContext.getAttribute("stu1")).getName() %></li>
		<li><%=((Student)request.getAttribute("stu1")).getName() %></li>
		<li><%=((List<Student>)application.getAttribute("list")).get(2).getName() %></li>
		<li><%=((Student)((Map<String, Object>)pageContext.getAttribute("map")).get("stu2")).getName() %></li>
	</ul>
	
	
	<h4>EL 사용시</h4>
	
	<ul>
		<li>${stu1.getName() }</li>
		<li>${stu1.name }</li>
		<%-- EL은 private 멤버가 접근이 되는데 사실 getter를 호출하는 것임 --%>
		
		<li>${requestScope.stu1.name }</li>
		<%-- Attribute 이름이 겹치면 항상 앞의 영역의 것을 들고 오게 됨 --%>
		<%-- 이때는, pageScope, requestScope, sessionScope, applicationScope라고 명시하면 됨 --%>
		<%-- 단, 구문이 길어지기 때문이 비효율적. 따라서, 이름이 피해서 저장하는 것을 권장한다 --%>
		
		<li>${list[2].name }</li>
		<%-- list는 원래 []사용 불가능. EL에서는 지원해준다~ --%>
		
		<li>${map['stu2'].name }</li>
		<%-- 마찬가지로 map도 []를 제공한다 --%>
	</ul>
	
	

</body>
</html>