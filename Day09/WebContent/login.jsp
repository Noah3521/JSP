<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	<%
		// 쿠키 가져오기
		Cookie[] cs = request.getCookies();
		String userid, userpw, save;
		
		userid = userpw = save = "";
		
		if (cs != null) {
			for (Cookie ck : cs) {
				switch(ck.getName()) {
				case "userid":	userid = ck.getValue();	break;
				case "userpw":	userpw = ck.getValue();	break;
				case "save":	save = ck.getValue(); break;
				}
			}
		}
		
	%>

	<h1>로그인</h1>
	<hr>
	
	<form action="login_result.jsp" method="POST">
		<p><input name="userid" placeholder="ID" required value="<%=userid %>"></p>
		<p><input name="userpw" type="password" placeholder="PW" required value="<%=userpw %>"></p>
		<p><input name="save" type="checkbox" value="yes" <%=save %>>자동저장</p>
		
		<button>로그인</button>
	</form>

</body>
</html>