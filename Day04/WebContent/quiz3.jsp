<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2.jsp</title>
</head>
<body>
	<%--
		quiz3.jsp			ID, PW를 입력 받을 form을 작성
							데이터는 quiz3_result.jsp로 전달한다
							단, POST 방식으로 전달
						
		quiz3_result.jsp	선언부에 문자열로 id, pw를 3쌍 이상 만들어 둔다
							quiz3.jsp에 넘어오는 파라미터를 받아서
							선언부에 작성한 id, pw 중 하 일치하면 계정이 있으면 로그인 성공을 출력
							만약, 일치하는 계정이 없으면 로그인 실패
	 --%>
	 
	<h1>quiz3</h1>
	<hr>
	
	<form action="quiz3_result.jsp" method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>
	
		<button>로그인</button>
	</form>

</body>
</html>