<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function board_update(){
	var title=document.form1.title.value;
	var writer=document.form1.writer.value;
	var contents=document.form1.contents.value;
	
	if(title=""){
		alert("제목을 입력하세요.");
		documen.form1.title.focus();
		return;
	}
	if(writer=""){
		alert("작성자를 입력하세요.");
		document.form1.writer.focus();
		return;
	}
	if(contents=""){
		alert("내용을 입력하세요.");
		document.form1.contents.focus();
		return;
	}
	document.form1.action="SpringProject/board/board/update.do";
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
		<td>작성자</td>
		<td><input name="writer" value="${dto.writer}"/></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><input name="contents" value="${dto.contents}"/></td>
	</tr>
</table>
<input type="button" value="수정하기" onclick="board_update()">
</form>
</body>
</html>