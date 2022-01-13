<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
</head>
<link href="${pageContext.request.contextPath}/resources/main.css" rel="stylesheet" type="text/css">
<body>
<div id=wrapper>
	<div id=menu>
		<div id=title>
			<h4>현이네 몰</h4>
		</div>
		<div id=login>
		<c:choose>
			<c:when test="${sessionScope.userid == null }">
				<a href="/SpringProject/member/login.do">로그인</a>
				<a href="/SpringProject/admin/login.do">관리자로그인</a>
				<a href="/SpringProject/member/signUp.do">회원가입</a>
			</c:when>
			<c:otherwise>
				<a href="/SpringProject/member/logout.do">로그아웃</a>
				<a href="/SpringProject/admin/logout.do">관리자 로그아웃</a>
			</c:otherwise>
		</c:choose>
		</div>
	</div>
	<nav class="mainmenu">
		<ul>
			<li><a href="#">상품목록</a></li>
			<li><a href="/SpringProject/shop/product/list.do">공지사항&자유게시판</a>
				<ul>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">자유게시판</a></li>
				</ul>
			</li>
			<li><a href="#">마이페이지</a>
				<ul>
					<li><a href="/SpringProject/member/profile?userid=${sessionScope.userid}">회원정보 수정</a></li>
					<li><a href="/SpringProject/shop/cart/list.do">장바구니</a>
				</ul>
			</li>
		</ul>
	</nav>
</div>

<div>
	<jsp:include page="board/boardPaging.jsp" />
</div>
</body>
</html>
