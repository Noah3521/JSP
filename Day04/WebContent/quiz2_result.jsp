<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2_result.jsp</title>
</head>
<body>
	<%!
		private String id = "itbank";
		private String pw = "it";
		
		public String login(String userid, String userpw) {
			boolean sameId = id.equals(userid);
			boolean samePw = pw.equals(userpw);
			
			if (sameId && samePw) {
				return id;
			}
			
			return null;
		}
	%>
	
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		String result = login(userid, userpw);
		String msg = (result == null) ? "로그인 실패" : "로그인 성공";
	%>
	
	<h1>결과</h1>
	<hr>
	
	<h3><%=msg %></h3>
	
	<a href="quiz2.jsp">
		<button>quiz2</button>
	</a>

</body>
</html>