<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
<%@ include file="include/menu.jsp" %>

<h2>공지사항</h2>
<table>
	<tr>
		<th>&nbsp;</th>
		<th>제목</th>
		<th>작성일</th>
		<th>작성자</th>
		<th>조회수</th>
	</tr>
	<c:forEach items="${list}" var="list">
		<tr>
			<td>${list.idx}</td>
			<td><a href="/SpringProject/board/board/detail/${list.idx}">${list.title}</a></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${list.redate}"/></td>
			<td>${list.writer}</td>
			<td>${list.hit}</td>
		</tr>
	
	</c:forEach>
</table>
</body>
</html>
