<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function board_writer(){
	var title=document.form1.title.value;
	var writer=document.form1.writer.value;
	var contents=document.form1.contents.value;
	if(title=""){
		alert("제목을 입력하세요");
		document.form1.title.focus();
		return;
	}
	if(writer=""){
		alert("작성자를 입력하세요.");
		document.form1.writer.focus();
		return;
	}
	if(contents=""){
		alert("내용을 입력하세요.")	
		document.form1.content.focus();
		return;
	}
	document.form1.action="/SpringProject/board/board/insert.do";
	document.form1.submit();
}
</script>
</head>
<body>
<form name="form1" method="post">
	<label>제목</label>
	<input type="text" name="title"><br>
	<label>작성자</label>
	<input type="text" name="writer"><br>
	<label>내용</label>
	<textarea rows="5" cols="50" name="contents"></textarea>
	<input type="button" value="게시글 작성" onclick="board_writer()">
</form>
</body>
</html>