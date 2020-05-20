<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>환영합니다</title>
<link rel="stylesheet" type="text/css" href="cssExe.css">

<script language="javascript">
function choi() {
	if(document.frm01.id.value=="") {
		alert("아이디를 입력해주세요.");
		document.frm01.id.focus();
		return;
	}
	if(document.frm01.pw.value=="") {
		alert("비밀번호를 입력해주세요.");
		document.frm01.pw.focus();
		return;
	}
	alert("아이디: " + document.frm01.id.value + " "+
	       "비밀번호: " + document.frm01.pw.value);
}
</script>
<body>
<h1>방문해 주셔서 감사합니다.</h1>
<hr>

<% String name = "Yang"; %> <!-- 안에 100% 자바 코드가 들어감.-->
<!-- 자바스크립트는 클라이언트 언이지만 로직처리가 가능함. 제한적인 로직.-->
<form name = "frm01">
아이디: <input type="text" name="id" size="11" value="<%=name %>">
<br>
비밀번호: <input type="password" name="pw" size="11">
<br>
<input type="button" value="로그인" onclick="choi()">
</form>

<hr>
<h3>즐거운 시간 되십시오</h3>

</body>
</html>