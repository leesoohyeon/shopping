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
<%@ include file="board/list.jsp" %>
<div>
	<button type="button" onclick="location.href='/SpringProject/board/board/list.do';">공지사항</button>
</div>
</body>
</html>
