<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<h1>JSP 기초</h1>
	<hr>
	
	<!-- HTML 주석 : 브라우저 소스 보기로 노출된다 -->
	<%-- JSP 주석 : 브라우저 소스 보기로 노출안됨 --%>
	
	<ul>
		<li>지시자 (directive) : &lt;%@ %>, 페이지 전반에 걸친 설정이나 외부 파일을 불러오는 용도로 사용</li>
		<li>선언부 (declaration) : &lt;%! %>, 필드나 메서드를 선언하는 부분. Java로 치면 클래스의 바로 안쪽</li>
		<li>실행부 (scriptlet) : &lt;% %>, 실행할 Java코드를 작성. 지역변수 선언 및 제어문 사용. Java로 치면 main함수와 비슷 </li>
		<li>표현식 (expression) : &lt;%= %>, Java의 데이터를 HTML 영역에 출력</li>
	</ul>

</body>
</html>