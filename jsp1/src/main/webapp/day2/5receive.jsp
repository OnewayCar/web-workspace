<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	///readonly
	String name = request.getParameter("name");
	out.print(name); out.print("<br>");
	String age = request.getParameter("age");
	out.print(age); out.print("<br>");
	///disabled 와 hidden
	String pname = request.getParameter("pname");
	out.print(pname); out.print("<br>");
	String pcode = request.getParameter("pcode");
	out.print(pcode); out.print("<br>");
	//변수명은 파라미터 이름과 다르게 그냥하는 테스트입니다.
	String pnum = request.getParameter("pno");
	out.print(pnum); out.print("<br>");
%>
</body>
</html>