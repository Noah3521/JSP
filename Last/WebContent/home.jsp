<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

	<jsp:useBean id="dao" class="model.BoardDAO"/>
	
	<c:if test="${empty param.search }">
		<c:set var="map" value="${dao.selectAll(param.page) }"/>
	</c:if>
	
	<c:if test="${not empty param.search }">
		<c:set var="map" value="${dao.selectAll(param.page, param.type, param.search) }"/>
	</c:if>
	
	<c:set var="list" value="${map['list'] }"/>
	<c:set var="p" value="${map['p'] }"/>
	
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
					<td>
						<a href="${cpath }/Board/view.jsp?idx=${row.idx }">
							${row.title }
						</a>
					</td>
					<td>${row.writer }</td>
					<td>${row.view_count }</td>
					<td>${row.write_date }</td>
				</tr>
			</c:forEach>
		</table>
	
		<br>
	
		<a href="${cpath }/Board/write.jsp">
			<button>글 작성</button>
		</a>
	
		<ul id="page">
			<c:if test="${p.prev }">
				<c:if test="${empty param.search }">
					<li><a href="${cpath }?page=${p.begin - 1}">이전</a></li>
				</c:if>
				
				<c:if test="${not empty param.search }">
					<li>
						<a href="${cpath }?page=${p.begin - 1}&type=${param.type}&search=${param.search}">
							이전
						</a>
					</li>
				</c:if>
			</c:if>
		
			<c:forEach var="i" begin="${p.begin }" end="${p.end }">
			
				<c:if test="${empty param.search }">
					<li><a href="${cpath }?page=${i }">${i }</a></li>
				</c:if>
				
				<c:if test="${not empty param.search }">
					<li>
						<a href="${cpath }?page=${i }&type=${param.type}&search=${param.search}">
							${i }
						</a>
					</li>
				</c:if>
			</c:forEach>
			
			<c:if test="${p.next }">
				<c:if test="${empty param.search }">
					<li><a href="${cpath }?page=${p.end + 1}">다음</a></li>
				</c:if>
				
				<c:if test="${not empty param.search }">
					<li>
						<a href="${cpath }?page=${p.end + 1}&type=${param.type}&search=${param.search}">
							다음
						</a>
					</li>
				</c:if>
			</c:if>
		</ul>
		
		<form id="search">
			<select name="type">
				<option value="title">제목</option>
				<option value="writer">작성자</option>
				<option value="contents">내용</option>
			</select>
			<input name="search">
			<button>검색</button>
		</form>
	</article>

<%@ include file="footer.jsp"%>