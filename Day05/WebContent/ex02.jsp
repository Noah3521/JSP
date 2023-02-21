<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>

<style>
	fieldset {
		display: inline-block;
	}
</style>
</head>
<body>
	<h1>input의 타입</h1>
	<hr>

	<fieldset>
		<legend>타입</legend>
	
		<form action="ex02_result.jsp">
			<%-- name : 파라미터 이름 --%>
			<%-- type : input에 작성할 데이터 타입 --%>
			<%-- placeholder : input에 미리 보여줄 구문 --%>
			<%-- required : input을 필수 입력칸으로 지정 --%>
			<%-- text 타입 : 모든 텍스트를 작성 가능. 기본값이라 생략 가능 --%>
			<p><input name="userid" type="text" placeholder="아이디" required></p>
			
			<%-- password 타입 : 모든 텍스트를 작성 가능. 단, 텍스트를 가려준다 --%>
			<p><input name="userpw" type="password" placeholder="패스워드" required></p>
			
			<%-- email 타입 : 텍스트에 @가 있는 검사. 없으면 전송이 안됨 --%>
			<p><input name="email" type="email" placeholder="이메일"></p>
			
			<%-- date 타입 : 날짜를 선택할 수 있는 타입 --%>
			<p><input name="birth" type="date"></p>
			
			<%-- number 타입 : 숫자만 입력 가능. step으로 증감 단위 지정 가능(= 기본은 1) --%>
			<p><input name="height" type="number" step="0.1" placeholder="신장"></p>
			
			<%-- radio 타입 : 다중택일 선택 타입. name이 같아야하고 선택한 value의 데이터가 전송됨 --%>
			<%-- checked 속성은 페이지 접근시 미리 체크가 되어있을 선택란 --%>
			<p>
				<input name="gender" type="radio" value="man">남
				<input name="gender" type="radio" value="woman">여
				<input name="gender" type="radio" value="other" checked>기타
			</p>
			
			<%-- checkbox 타입 : 다중 선택 타입. name이 같아야하고 선택한 value의 데이터가 전송됨 --%>
			<p>
				<input name="hobby" type="checkbox" value="game" checked>게임
				<input name="hobby" type="checkbox" value="movie">영화
				<input name="hobby" type="checkbox" value="music">음악
				<input name="hobby" type="checkbox" value="book">독서
			</p>

			<%-- file 타입 : 파일을 선택 가능. 파일의 이름만 전송된다 --%>
			<p><input name="file" type="file"></p>

			<%-- select 태그 : 드래그 선택 태그 --%>
			<%-- option에 value가 없으면 태그안의 내용이 전송. value가 작성되면 value의 내용이 전송됨 --%>
			<p>
				<select name="major">
					<option value="computer">컴퓨터공학과</option>
					<option>기계공학과</option>
					<option>회계학과</option>
					<option>경영학과</option>
					<option>법학과</option>
					<option>전기공학과</option>
				</select>
			</p>
			
			<p><textarea name="info" rows="15" cols="30" placeholder="자기 소개"></textarea></p>
			
			<button>전송</button>
		</form>
	</fieldset>

</body>
</html>