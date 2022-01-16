<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<td>제목</td>
		<td>${dto.title}</td>
	</tr>
	<tr>
		<td>작성일</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${dto.redate}"/></td>
		<td>작성자</td>
		<td>${dto.writer}</td>
	</tr>
	<tr>
		<td>내용</td>
		<td>${dto.contents}</td>
	</tr>
</table>
</body>
</html>