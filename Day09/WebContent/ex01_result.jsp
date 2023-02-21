<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	<%
		String subject = request.getParameter("subject");
		String name = request.getParameter("name");
		String save = request.getParameter("save");
		
		// 1. 쿠키 객체를 생성
		// - Cookie(String name, String value)
		// - name은 저장할 이름, value는 저장할 데이터
		Cookie[] cs = new Cookie[] {
			new Cookie("subject", subject),
			new Cookie("name", name)
		};
		
		// 2. 쿠키의 수명을 지정
		// - 수명이 없으면 브라우저 종료시 사라진다 (= 세션 쿠키)
		// - 수명을 지정하면 브라우저 종료시에도 계속 유지가 된다
		
		for (int i = 0; i < cs.length; i++) {
			cs[i].setMaxAge(0);
			
			if ("yes".equals(save)) {
				cs[i].setMaxAge(60 * 60 * 24 * 7);
			}
			
			// 3. 쿠키를 응답에 추가해서 클라이언트에 발급
			response.addCookie(cs[i]);
		}
	%>

	<h1>쿠키 발급 완료~</h1>
	<hr>
	
	<a href="ex01.jsp">
		<button>ex01</button>
	</a>

</body>
</html>