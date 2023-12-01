<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<%
session.invalidate();
out.print("<script>");
out.print("alert('로그아웃 했습니다.');");
out.print("location.href='index.jsp';");
out.print("</script>");
%>
</html>