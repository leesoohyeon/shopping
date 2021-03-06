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
<link href="${pageContext.request.contextPath}/resources/board.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$("#listAdd").click(function(){
		location.href="/SpringProject/board/board/writer.do";
	});
});
</script>
<script>
	function selChange(){
		var sel = document.getElementById('cntPerPage').value;
		location.href="boardList.do?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
<body>
<%@ include file="../include/menu.jsp"%>
<div>
	<select id="cntPerPage" name="sel" onchange="selChange()">
		<option value="5" <c:if test="${paging.cntPerPage ==5}">selected</c:if>>5줄보기</option>
		<option value="10" <c:if test="${paging.cntPerPage ==10}">selected</c:if>>10줄보기</option>
		<option value="15" <c:if test="${paging.cntPerPage ==15}">selected</c:if>>15줄보기</option>
		<option value="20" <c:if test="${paging.cntPerPage ==20}">selected</c:if>>25줄보기</option>
	</select>
</div>
<table>
	<tr>
		<td>NO</td>
		<td>제목</td>
		<td>내용</td>
		<td>작성자</td>
		<td>등록일</td>
		<td>조회수</td>
	</tr>
	<c:forEach items="${viewAll}" var="list">
		<tr>
			<td>${list.idx}</td>
			<td><a href="/SpringProject/board/board/detail/${list.idx}">${list.title}</a></td>
			<td>${list.contents}</td>
			<td>${list.writer}</td>
			<td><fmt:formatDate value="${list.redate}" pattern="yyyy.MM.dd"/></td>
			<td>${list.hit}</td>
		</tr>
	</c:forEach>
</table>
<div>
	<c:if test="${paging.startPage !=1 }">
		<a href="/SpringProject/board/board/boardList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
	</c:if>
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
		<c:choose>
			<c:when test="${p == paging.nowPage}">
				<b>${p}</b>
			</c:when>
			<c:when test="${p != paging.nowPage}">
				<a href="/SpringProject/board/board/boardList.do?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
			</c:when>
		</c:choose>
	</c:forEach>
	<c:if test="${paging.endPage != paging.lastPage}">
		<a href="/SpringProject/board/board/boardList.do?nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage}">&gt;</a>
	</c:if>
	<c:if test="${sessionScope.userid != null}">
<button type="button" id="listAdd">게시글작성</button>
</c:if>
</div>
</body>
</html>