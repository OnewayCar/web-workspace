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
<%
String temp = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String grade = request.getParameter("grade");
String city = request.getParameter("city");
int custno = 0;
if (temp != null)
	custno = Integer.parseInt(temp);

MemberDao dao = MemberDao.getMemberDao();
Member dto = new Member(custno, custname, phone, address, null, grade, city);
int result = dao.update(dto);

/* if(result>0){
	out.print("<script>");
	out.print("alert('회원 정보 수정이 완료되었습니다.');");
	out.print("location.href='MemberList.jsp';");
	out.print("</script>");
	out.print("<script>");
} */



%>

</body>
</html>