<%@page import="sample.dto.Member"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dto" class="sample.dto.Member"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<hr>
<jsp:getProperty property="custname" name="dto"/><br>
<jsp:getProperty property="phone" name="dto"/><br>
<jsp:getProperty property="address" name="dto"/><br>
<%



%>

</body>
</html>