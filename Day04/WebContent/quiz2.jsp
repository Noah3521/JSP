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
		quiz2.jsp			ID, PW를 입력 받을 form을 작성
							데이터는 quiz2_result.jsp로 전달한다
							단, POST 방식으로 전달
						
		quiz2_result.jsp	선언부에 문자열로 id, pw를 한쌍 만들어 둔다
							quiz2.jsp에 넘어오는 파라미터를 받아서
							선언부에 작성한 id, pw와 일치하면 로그인 성공을 출력
							만약, 하나라도 다르면 로그인 실패를 출력
	 --%>
	 
	<h1>quiz2</h1>
	<hr>
	
	<form action="quiz2_result.jsp" method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>
	
		<button>로그인</button>
	</form>

</body>
</html>