<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>

<style>
	/* 여기는 CSS 문법을 작성 */
	input {
		width: 70px;
	}
</style>
</head>
<body>
	<%--
		quiz1.jsp			두 정수를 입력 받을 수 있는 form 작성
							데이터는 quiz1_result.jsp로 전달한다
							GET, POST 아무거나 사용해도 무방
						
		quiz1_result.jsp	quiz1.jsp에 넘어오 파라미터를 받아서
							전달 받은 두 정수의 합계를 화면에 출력
	 --%>
	
	<h1>quiz1</h1>
	<hr>
	
	<form action="quiz1_result.jsp">
		<input name="n1" type="number" required>
		+
		<input name="n2" type="number" required>
		
		<button>=</button>
	</form>

</body>
</html>