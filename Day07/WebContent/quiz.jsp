<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		quiz.jsp			로그인 폼 작성. ID/PW를 입력 받는다
							입력한 정보는 quiz_result.jsp로 전달
							
		quiz_result.jsp		Account 클래스로 계정을 3개정도 생성해 둔다
							quiz.jsp에서 넘어온 정보를 가지고 로그인 처리
							성공시 -> quiz_success.jsp로 '포워드'
							실패시 -> quiz_fail.jsp로 '리다이렉트'
		
		quiz_success.jsp	id님 로그인 성공을 출력
		
		quiz_fail.jsp		로그인 실패를 출력
		
		Account.java		ID/PW을 가지는 Java Beans
	 --%>
	 
	<h1>quiz</h1>
	<hr>
	
	<form action="quiz_result.jsp">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>
		
		<button>로그인</button>
	</form>
	

</body>
</html>