<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function memberupdate(){
	var passwd=document.form1.passwd.value;
	var email=document.form1.email.value;
	var adress=document.form1.adress.value;
	if(passwd==""){
		alert("비밀번호를 입력하세요.");
		document.form1.passwd.focus();
		return;
	}
	if(email==""){
		alert("이메일을 입력하세요.");
		document.form1.email.focus();
		return;
	}
	if(adress==""){
		alert("주소를 입력하세요.");
		document.form1.adress.focus();
		return;
	}
	document.form1.action="/SpringProject/member/update"
	document.form1.submit();
}
</script>
</head>
<body>
<h2>회원정보 수정</h2>
<form name="form1" method="post">
<table border="1" width="400px">
	<tr>
		<td>비밀번호</td>
		<td><input type="password" id="passwd" name="passwd" value="${dto.passwd}"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input id="email" name="email" value="${dto.email}"></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input id="adress" name="adress" value="${dto.adress}"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="hidden" name="userid" value="${dto.userid}">
			<input type="button" value="수정하기" onclick="memberupdate()">
		</td>
	</tr>
</table>
</form>
</body>
</html>