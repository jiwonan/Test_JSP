<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	// 한글 안깨짐
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gen = request.getParameter("gen"); // gen = M or F
	if(gen.equals("M")) gen = "남자";
	else gen = "여자";
	
	String job = request.getParameter("job");
	
	String inotice = request.getParameter("inotice");
	String cnotice = request.getParameter("cnotice");
	String dnotice = request.getParameter("dnotice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름: <%= name %><br>
아이디: <%= id %><br>
비밀번호: <%= pw %><br>
성별: <%= gen %><br>
직업: <%= job %><br>

공지 메일: <%= notice(inotice) %><br>
광고 메일: <%= notice(cnotice) %><br>
배송 확인 메일: <%= notice(dnotice) %><br>

<%!
	public String notice(String notice) {
		if(notice == null)
			return "받지않음";
		else
			return "받음";
	}

%>
</body>
</html>