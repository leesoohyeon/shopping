<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function notice_writer(){
	var title=document.form1.title.value;
	var contents=document.form1.contents.value;
	if(title=""){
		alert("제목을 입력하세요");
		document.form1.title.focus();
		return;
	}
	if(contents=""){
		alert("내용을 입력하세요.")	
		document.form1.content.focus();
		return;
	}
	document.form1.action="/SpringProject/notice/insert";
	document.form1.submit();
}
</script>
</head>
<body>
<form name="form1" method="post">
	<label>제목</label>
	<input type="text" name="title"><br>
	<label>내용</label>
	<textarea rows="5" cols="50" name="contents"></textarea>
	<input type="button" value="게시글 작성" onclick="notice_writer()">
</form>
</body>
</html>