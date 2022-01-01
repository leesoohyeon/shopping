<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$("#listAdd").click(function(){
		location.href="/SpringProject/board/board/writer.do";
	});
});
</script>
</head>
<body>
<h2>게시판 리스트</h2>
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
<button type="button" id="listAdd">게시글작성</button>
</body>
</html>