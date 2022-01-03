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
<div>
	<select id="cntPerPage" name="sel" onchange="selChange()">
		<option value="5" <c:if test="${paging.cntPerPage ==5}">selected</c:if>>5줄보기</option>
		<option value="10" <c:if test="${paging.cntPerPage ==10}">selected</c:if>>10줄보기</option>
		<option value="15" <c:if test="${paging.cntPerPage ==15}">selected</c:if>>15줄보기</option>
		<option value="20" <c:if test="${paging.cntPerPage ==20}">selected</c:if>>25줄보기</option>
	</select>
</div>
</body>
</html>