<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	fieldset { display: inline-block; }
</style>
</head>
<body>
	<h1>EL 활용 - parameter</h1>
	<hr>
	
	<form>
		<p><input name="name" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		
		<button>전송</button>
	</form>
	
	<hr>
	
	<fieldset>
		<legend>표현식</legend>
		
		<ul>
			<li>이름 : <%=request.getParameter("name") %></li>
			<li>나이 : <%=request.getParameter("age") %></li>
			<li>나이 + 3 : <%=request.getParameter("age") + 3 %></li>
		</ul>
	</fieldset>
	
	
	<fieldset>
		<legend>EL</legend>
		
		<ul>
			<li>이름 : ${param.name }</li>
			<li>나이 : ${param.age }</li>
			<li>나이 + 3 : ${param.age + 3 }</li>
		</ul>
	</fieldset>
	
	
	<h3>결과</h3>
	
	<ul>
		<li>EL은 null을 출력하지 않는다</li>
		<li>숫자만 전달하면 알아서 정수/실수로 변환한다</li>
	</ul>

</body>
</html>