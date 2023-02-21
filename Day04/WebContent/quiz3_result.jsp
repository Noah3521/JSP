<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz3_result.jsp</title>
</head>
<body>
	<%!
		String[] ids = new String[] { "itbank", "root", "user" };
		String[] pws = new String[] { "it",		"qwe",	"123" };
		
		
		public String login(String userid, String userpw) {
			for (int i = 0; i < ids.length; i++) {
				boolean sameId = ids[i].equals(userid);
				boolean samePw = pws[i].equals(userpw);
				
				if (sameId && samePw) {
					return ids[i];
				}
			}
			
			return null;
		}
	%>
	
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		String result = login(userid, userpw);
		String msg = "로그인 실패";
		
		if (result != null) {
			msg = result + "님 로그인";
		}
	%>
	
	<h1>결과</h1>
	<hr>
	
	<h3><%=msg %></h3>
	
	<a href="quiz3.jsp">
		<button>quiz3</button>
	</a>


</body>
</html>