<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<a href="/SpringProject/shop/product/list.do">상품목록</a>
<a href="/SpringProject/shop/cart/list.do">장바구니</a>
<a href="/SpringProject/board/board/list.do">게시판</a>
<div style="text-align:right;">
<c:choose>
	<c:when test="${sessionScope.userid ==null }">
		<a href="/SpringProject/member/signUp.do">회원가입</a>
		<a href="/SpringProject/member/login.do">로그인</a>
		<a href="/SpringProject/admin/login.do">관리자 로그인</a>
	</c:when>
	<c:otherwise>
		${sessionScope.name}님이 로그인중입니다.
		<a href="/SpringProject/member/logout.do">로그아웃</a>
		<a href="/SpringProject/admin/logout.do">관리자 로그아웃</a>
	</c:otherwise>
</c:choose>
</div>