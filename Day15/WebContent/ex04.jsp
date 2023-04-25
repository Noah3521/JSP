<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<h1>EL 활용 - 연산자</h1>
	<hr>
	
	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<th>연산</th>
			<th>결과</th>
		</tr>
		<tr>
			<td>\${10 + 3 }</td>
			<td>${10 + 3 }</td>
		</tr>
		<tr>
			<td>\${10 - 3 }</td>
			<td>${10 - 3 }</td>
		</tr>
		<tr>
			<td>\${10 * 3 }</td>
			<td>${10 * 3 }</td>
		</tr>
		<tr>
			<td>\${10 / 3 }</td>
			<td>${10 / 3 }</td>
		</tr>
		<tr>
			<td>\${10 % 3 }</td>
			<td>${10 % 3 }</td>
		</tr>
		<tr>
			<td>\${10 < 3 }</td>	<%-- EL은 연산자를 기호 및 문자로 사용가능 --%>
			<td>${10 lt 3 }</td>	<%-- lt : less than, ~보다 작다 --%>
		</tr>
		<tr>
			<td>\${10 > 3 }</td>
			<td>${10 > 3 }</td>		<%-- gt : greater than, ~보다 크다 --%>
		</tr>
		<tr>
			<td>\${10 <= 10 }</td>
			<td>${10 le 10 }</td>	<%-- le : less equal, ~보다 작거나 같다 --%>
		</tr>
		<tr>
			<td>\${10 >= 10 }</td>
			<td>${10 ge 10 }</td>	<%-- ge : greater equal, ~보다 크거나 같다 --%>
		</tr>
		<tr>
			<td>\${10 == 10 }</td>
			<td>${10 == 10 }</td>	<%-- eq : equal, ~와 같다 --%>
		</tr>
		<tr>
			<td>\${10 != 10 }</td>
			<td>${10 != 10 }</td>	<%-- ne : not equal, ~와 다르다 --%>
		</tr>
		<tr>
			<td>\${true && true }</td>
			<td>${true and true }</td>	<%-- and : 양쪽 모두 참이면 참 --%>
		</tr>
		<tr>
			<td>\${false || false }</td>
			<td>${false || false }</td>	<%-- or : 양쪽 모두 거짓이면 거짓 --%>
		</tr>
		<tr>
			<td>\${!true }</td>
			<td>${not true }</td>		<%-- not : 참/거짓을 반전 --%>
		</tr>
		<tr>
			<td>\${empty user }</td>	<%-- empty : 해당 attribute가 있는지 검사 --%>
			<td>${empty user }</td>		<%-- 없으면 참, 있으면 거짓 --%>
		</tr>
		<tr>
			<td>\${not empty user }</td>
			<td>${not empty user }</td>	<%-- 있으면 참, 없으면 거짓 --%>
		</tr>
		<tr>
			<td>\${10 >= 0 ? '양수' : '음수' }</td>
			<td>${10 >= 0 ? '양수' : '음수' }</td>
		</tr>	
	
	</table>

</body>
</html>