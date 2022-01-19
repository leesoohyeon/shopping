<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/menu.jsp"%>
<table>
	<tr>
		<th>이름</th>
		<th>ID</th>
		<th>PW</th>
		<th>E-mail</th>
		<th>주소</th>
		<th>가입일자</th>
	</tr>
	<c:forEach items="${list}" var="list">
		<tr>
			<td>${list.name}</td>
			<td>${list.userid}</td>
			<td>${list.passwd}</td>
			<td>${list.email}</td>
			<td>${list.adress}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${list.join_date}"/></td>
			<td><a href="/SpringProject/member/delete?userid=${list.userid}">삭제</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>