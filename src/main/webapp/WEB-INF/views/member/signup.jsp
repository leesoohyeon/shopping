<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$("#btnsignup").click(function(){
		var name = $("#name").val()
		var userid = $("#userid").val();
		var passwd = $("#passwd").val();
		var eamil = $("#email").val();
		var adress = $("#adress").val();
		if(name == ""){
			alert("이름을 입력하세요.");
			$("#name").focus()
			return;
		}
		if(userid == ""){
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return;
		}
		if(passwd == ""){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			return;
		}
		if(email == ""){
			alert("이메일을 입력하세요.");
			$("#email").focus();
			return;
		}
		if(adress == ""){
			alert("주소를 입력하세요.");
			$("#adress").focus();
			return;
		}
		document.form1.action="/SpringProject/member/memberAdd.do";
		document.form1.submit();
	});
});
</script>
</head>
<body>
<%@ include file="../home.jsp" %>
<h2>회원가입</h2>
<form name="form1" method="post">
<table border="1" width="700px">
	<tr>
		<td>이름</td>
		<td><input id="name" name="name"></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input id="userid" name="userid"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" id="passwd" name="passwd"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input id="email" name="email"></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input id="adress" name="adress"><button>주소찾기</button><br>
		</td>
	</tr>
</table>
	<button type="button" id="btnsignup">회원가입</button>
</form>
</body>
</html>