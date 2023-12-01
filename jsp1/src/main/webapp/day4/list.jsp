<%@page import="java.util.List"%>
<%@page import="sample.dto.Member"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lsit.jsp _ 요청 처리 기능</title>
</head>
<body>
<%
MemberDao dao = MemberDao.getMemberDao();
List<Member> list = dao.selectAll();

request.setAttribute("list",list);
pageContext.forward("listView.jsp");

%>
</body>
</html>