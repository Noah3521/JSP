<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<h1>리다이렉트 테스트</h1>
	<hr>
	
	<form action="ex02_result.jsp">
		<select name="site">
			<option value="https://www.naver.com/">네이버</option>
			<option value="https://www.google.com/">구글</option>
			<option value="https://www.youtube.com/">유튜브</option>
			<option value="https://www.apple.com/">애플</option>
			<option value="https://www.daum.net/">다음</option>
			<option value="https://mgr.kgitbank.com">LMS</option>
		</select>
		
		<button>전송</button>
	</form>

</body>
</html>