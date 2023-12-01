<%@page import="sample.dao.JCustomerDao"%>
<%@page import="sample.dto.JCustom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18loginAcriom;</title>
</head>
<body>
<%
String userid = request.getParameter("userid");
String password = request.getParameter("password");
out.print(userid);out.print(password);
JCustomerDao dao = new JCustomerDao();
JCustom customer = dao.login(userid, password);
if(customer!=null)
{
	session.setAttribute("user",customer);
	
}




out.print("<script>");
if(customer!=null){
	out.print("alert('로그인 성공했습니다.');");
	out.print("location.href='index.jsp';");
}else{
	out.print("alert('로그인 실패.\\n계정정보가 올바르지 않습니다.');");
	out.print("location.href='17loginView.jsp';");
}
out.print("</script>");
%>

</body>

