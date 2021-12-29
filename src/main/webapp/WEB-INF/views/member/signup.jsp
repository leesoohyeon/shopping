<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@ include file="../include/menu.jsp" %>
<h2>회원가입</h2>
<form name="form1" method="post">
<table border="1" width="700px">
	<tr>
		<td>이름</td>
		<td><input id="name" name="name"></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input id="signid" name="signid"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input id="passwd" name="passwd"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input id="email" name="email"></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input id="adress" name="adress"><button>주소찾기</button><br>
			<input id="adress1" name="adress1">
		</td>
	</tr>
</table>
	<button type="button" id="btnsignup">회원가입</button>
</form>
</body>
</html>