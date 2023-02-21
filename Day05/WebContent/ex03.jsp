<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<h1>Java Beans</h1>
	<hr>
	
	<h3>Java Application에서 데이터를 주고 받기 위한 객체</h3>
	
	<form action="ex03_result.jsp" method="POST">
		<p><input name="userid" placeholder="ID 입력" required></p>
		<p><input name="userpw" type="password" placeholder="PW 입력" required></p>
		<p><input name="nick" placeholder="닉네임 입력" required></p>
		<p><input name="name" placeholder="이름 입력" required></p>
		<p><input name="age" type="number" placeholder="나이 입력" required></p>
		<p><input name="phone" placeholder="연락처 입력" required></p>
		
		<button>전송</button>
	</form>

</body>
</html>