<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="proc" method="post">
이름: <input type="" name="irum" size=10><br>
아이디: <input type="text" name="aid" size=10><br>
비밀번호: <input type="password" name="amho" size=10><br>
취미:
<input type="checkbox" name="hobby" value="cook">요리
<input type="checkbox" name="hobby" value="read">독서
<input type="checkbox" name="hobby" value="run">조깅
<input type="checkbox" name="hobby" value="swim">수영
<input type="checkbox" name="hobby" value="cook">취침
<br>
<input type="radio" name="major" value="kor">국어
<input type="radio" name="major" value="eng">영어
<input type="radio" name="major" value="mat">수학
<input type="radio" name="major" value="jsp">웹프로그래밍
<br>
<select name="overwatch">
	<option value="자리야">자리야</option>
	<option value="둠피스트">둠피스트</option>
	<option value="겐지">겐지</option>
	<option value="디바">디바</option>
</select>
<br>
<input type="submit" value="전송">
<input type="reset" value="초기화">


</form>

</body>
</html>