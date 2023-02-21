<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<h1>JSP 기초</h1>
	<hr>
	
	<%! 
		// 여기서 부턴 Java 영역
		private int n1 = 10;		// 접근 제어자가 붙네? --> 필드 구나~
				
		// 필드, 메서드 선언이 되네 --> 클래스 바로 안쪽이다
		public int adder(int n1, int n2) {
			return n1 + n2;
		}
	%> 
	
	<%-- 여기는 다시 HTML 영역 --%>
	
	<h3>n1 = <%=n1 %></h3>
	<h3>adder(5, 6) = <%=adder(5, 6) %></h3>
	
	<p>표현식을 사용시 Java의 데이터를 원하는 HTML 영역에서 출력 가능</p>
	
	
	
	<%
		// 여기서 또 Java 영역
		int n2 = 20;		// 접근 제어자를 붙이면 에러 --> 지역 변수 구나~
	
		for (int i = 1; i <= 5; i++) {
			// System.out.println(i + " : Hello JSP~");
			// - System.out은 표준 출력 객체. console에 데이터가 출력된다
			
			out.println("<p>" + i + " : Hello JSP~</p>");
			// - out은 JSP 내에서 이미 작성되어 있는 객체 (= JSP 내장 객체)
			// - JspWriter라는 클래스 타입이고, web page에 데이터를 출력하는 기능을 가진다
		}
	%>
	
	
	
	

</body>
</html>