<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ITBANK</title>
<style type="text/css">
body {
    width: 1100px;
    margin: 0 auto;
}

a {
    color: black;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

#userInfo {
	text-align: right;
	height: 20px;
}

header {
    /* background-color: red; */
    height: 100px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

header > h1 {
    font-size: 2.5em;
    margin-top: 10px;
}

header > nav { width: 25%; }

header ul {
    list-style: none;
    padding: 0;
    display: flex;
    justify-content: space-between;
    font-weight: bold;
}

#board {
    border-collapse: collapse;
    width: 100%;
    text-align: center;
}

#board th, #board td {
    border-bottom: 1px solid rgba(0, 0, 0, 0.398);
    padding: 10px 15px;
}

#board td:nth-child(2) {
    width: 50%;
    text-align: left;
}

#writeBoard {
	width: 800px;
}

#writeBoard textarea, 
#writeBoard input {
	width: 100%;
	box-sizing: border-box;
	resize: none;
	border: 0;
	outline: none;
	font-family: consolas;
	font-size: 20px;
}

#writeBoard textarea {
	min-height: 400px;
}

#search {
	display: flex;
	justify-content: center;
}

#page {
	list-style: none;
	padding: 0;
	display: flex;
	justify-content: center;
}

#page li {
	margin: 10px;
}
</style>
</head>
<body>
	<div id="userInfo">
		${empty user ? '' : user.nick } ${empty user ? '' : '|'} <a
			href="${cpath }/Account/myPage.jsp"> ${empty user ? '' : '마이페이지' }
		</a>
	</div>

	<header>
		<h1>
			<a href="${cpath }" style="text-decoration: none;">ITBANK</a>
		</h1>

		<nav>
			<ul>
				<li><a href="${cpath }">HOME</a></li>
				<li><a
					href="${cpath }/Account/${empty user ? 'login.jsp' : 'logout.jsp' }">
						${empty user ? 'Login' : 'Logout' } </a></li>
				<li><a href="${cpath }/Account/signUp.jsp">SignUp</a></li>
			</ul>
		</nav>
	</header>

	<hr>
	<br>

	<main>

		<jsp:useBean id="dao" class="model.BoardDAO" />

		<c:if test="${empty param.search }">
			<c:set var="map" value="${dao.selectAll(param.page) }" />
		</c:if>

		<c:if test="${not empty param.search }">
			<c:set var="map"
				value="${dao.selectAll(param.page, param.type, param.search) }" />
		</c:if>

		<c:set var="list" value="${map['list'] }" />
		<c:set var="p" value="${map['p'] }" />

		<article>
			<img src="img/back.png" width="100%">
		</article>

		<h3>전체 게시판</h3>

		<article>
			<table id="board">
				<tr>
					<th>글 번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>

				<c:forEach var="row" items="${list }">
					<tr>
						<td>${row.idx }</td>
						<td><a href="${cpath }/Board/view.jsp?idx=${row.idx }">
								${row.title } </a></td>
						<td>${row.writer }</td>
						<td>${row.view_count }</td>
						<td>${row.write_date }</td>
					</tr>
				</c:forEach>
			</table>

			<br> <a href="${cpath }/Board/write.jsp">
				<button>글 작성</button>
			</a>

			<ul id="page">
				<c:if test="${p.prev }">
					<c:if test="${empty param.search }">
						<li><a href="${cpath }?page=${p.begin - 1}">이전</a></li>
					</c:if>

					<c:if test="${not empty param.search }">
						<li><a
							href="${cpath }?page=${p.begin - 1}&type=${param.type}&search=${param.search}">
								이전 </a></li>
					</c:if>
				</c:if>

				<c:forEach var="i" begin="${p.begin }" end="${p.end }">

					<c:if test="${empty param.search }">
						<li><a href="${cpath }?page=${i }">${i }</a></li>
					</c:if>

					<c:if test="${not empty param.search }">
						<li><a
							href="${cpath }?page=${i }&type=${param.type}&search=${param.search}">
								${i } </a></li>
					</c:if>
				</c:forEach>

				<c:if test="${p.next }">
					<c:if test="${empty param.search }">
						<li><a href="${cpath }?page=${p.end + 1}">다음</a></li>
					</c:if>

					<c:if test="${not empty param.search }">
						<li><a
							href="${cpath }?page=${p.end + 1}&type=${param.type}&search=${param.search}">
								다음 </a></li>
					</c:if>
				</c:if>
			</ul>

			<form id="search">
				<select name="type">
					<option value="title">제목</option>
					<option value="writer">작성자</option>
					<option value="contents">내용</option>
				</select> <input name="search">
				<button>검색</button>
			</form>
		</article>
	</main>

	<br>
	<hr>

	<footer>
		<h4>(주)ITBANK 2월 평일 JSP</h4>
	</footer>

</body>
</html>