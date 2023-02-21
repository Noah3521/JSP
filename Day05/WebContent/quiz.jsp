<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
</head>
<body>
	<h1>quiz</h1>
	<hr>
	
	<%--
		quiz.jsp			ID, PW를 입력하는 form을 작성
							데이터는 quiz_result.jsp로 전송
							
		quiz_result.jsp		선언부에 Account 타입으로 계정을 1개 생성해 둔다
							quiz.jsp에서 전달받은 데이터와 미리 생성해둔 계정의 정보와 
							일치하면 '닉네임'님 로그인 성공
							다르면 로그인 실패를 출력한다
		
		Account.java		id, pw, nick을 멤버로 가지는 Java Beans
	 --%>

</body>
</html>