<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function notice_update(){
	var title=document.form1.title.value;
	var contents=document.form1.contents.value;
	
	if(title=""){
		alert("제목을 입력하세요.");
		documen.form1.title.focus();
		return;
	}
	if(contents=""){
		alert("내용을 입력하세요.");
		document.form1.contents.focus();
		return;
	}
	document.form1.action="/SpringProject/notice/update.do";
	document.form1.submit();
}
</script>
</head>
<body>
<form name="form1" method="post">
<table>
	<tr>
		<td>제목</td>
		<td><input name="title" value="${dto.title}"/></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><input name="contents" value="${dto.contents}"/></td>
	</tr>
</table>
<input type="hidden" name="idx" value="${dto.idx}">
<input type="button" value="수정하기" onclick="notice_update()">
</form>
</body>
</html>