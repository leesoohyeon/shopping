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
		
	</c:forEach>
</table>
</body>
</html>