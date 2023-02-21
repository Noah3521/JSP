<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>
	<%--
		quiz1.jsp			로그인 폼 작성. ID/PW를 입력 받는다
							입력한 정보는 quiz1_result.jsp로 전달
							
		quiz1_result.jsp	Account 클래스로 계정을 3개정도 생성해 둔다
							quiz1.jsp에서 넘어온 정보를 가지고 로그인 처리
							성공시 -> quiz1_success.jsp로
							실패시 -> quiz1_fail.jsp로 리다이렉트
		
		quiz1_success.jsp	로그인 성공을 출력 (ID/닉네임 출력할 필요 없음)
		
		quiz1_fail.jsp		로그인 실패를 출력
		
		Account.java		ID/PW/닉네임을 가지는 Java Beans
	 --%>

	<h1>quiz1</h1>
	
	<form action="quiz1_result.jsp" method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>
		
		<button>로그인</button>
	</form>

</body>
</html>