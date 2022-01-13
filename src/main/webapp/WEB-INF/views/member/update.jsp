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
	alert("회원정보가 수정되었습니다.");
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
		<td>아이디</td>
		<td><input name="userid" readonly="readonly" value="${model.userid}"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="passwd" value="${model.passwd}"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input  name="email" value="${model.email}"></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input name="adress" value="${model.adress}"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="수정하기" onclick="memberupdate()">
		</td>
	</tr>
</table>
</form>
</body>
</html>