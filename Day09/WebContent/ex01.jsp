<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%
		// 1. 발급 받은 쿠키는 클라이언트가 들고 서버로 간다
		// - 즉, request에 담겨있다
		Cookie[] cs = request.getCookies();

		// 2. 받은 쿠키 배열에서 원하는 이름을 찾아서 가져온다
		String subject, name, jid;
		
		subject = name = jid = "";
		
		if (cs != null) {	// 최초 접속시 쿠키가 없기 때문에 예외 발생
			for (Cookie ck : cs) {
				switch(ck.getName()) {
				case "subject":		subject = ck.getValue(); 	break;
				case "name":		name = ck.getValue();		break;
				case "JSESSIONID":	jid = ck.getValue();	 	break;
				}
			}
		}
	%>

	<h1>쿠키</h1>
	<hr>
	
	<ul>
		<li>웹에서 상태를 저장하기 위한 작은 데이터</li>
		<li>서버에서 발급을 하고 클라이언트가 보관한다</li>
		<li>클라이언트가 서버로 통신할땐 request</li>
		<li>서버가 클라이언트로 통신할땐 response</li>
		<li>따라서, 쿠키 발급은 response에 추가해서 클라이언트에 전달하고</li>
		<li>클라이언트는 이 쿠키를 request에 담아서 서버에 다시 들고 들어간다</li>
	</ul>

	<h3>※ 쿠키는 개발자 도구에서 어플리케이션 탭에서 확인 가능</h3>
	<h4>JSESSIONID : <%=jid %></h4>
	
	<form action="ex01_result.jsp">
		<p><input name="subject" placeholder="신청 과목" required value="<%=subject %>"></p>
		<p><input name="name" placeholder="성함" required value="<%=name %>"></p>
		<p><input name="save" type="checkbox" value="yes">쿠키 발급</p>
		<button>전송</button>
	</form>

</body>
</html>