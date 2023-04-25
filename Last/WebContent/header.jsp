<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ITBANK</title>
    <link rel="stylesheet" href="${cpath }/css/style.css" type="text/css">
</head>
<body>
	<div id="userInfo">
		${empty user ? '' : user.nick }
		${empty user ? '' : '|'}
		
		<a href="${cpath }/Account/myPage.jsp"> 
			${empty user ? '' : '마이페이지' }
		</a>
	</div>

    <header>
        <h1><a href="${cpath }" style="text-decoration: none;">ITBANK</a></h1>

        <nav>
            <ul>
                <li><a href="${cpath }">HOME</a></li>
                <li>
                	<a href="${cpath }/Account/${empty user ? 'login.jsp' : 'logout.jsp' }">
                		${empty user ? 'Login' : 'Logout' }
                	</a>
                </li>
                <li><a href="${cpath }/Account/signUp.jsp">SignUp</a></li>
            </ul>
        </nav>
    </header>

    <hr><br>

    <main>