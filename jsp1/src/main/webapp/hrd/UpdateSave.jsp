
<%@page import="sample.dto.Member"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//메소드 방식이 post 일 때는 인코딩이 꼭 필요합니다.
request.setCharacterEncoding("UTF-8");

String temp = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String grade = request.getParameter("grade");
String city = request.getParameter("city");
int custno = 0;
if (temp != null)
	custno = Integer.parseInt(temp);

//out.print(name);            //테스트용 출력

MemberDao dao = MemberDao.getMemberDao();
Member dto = new Member(custno, custname, phone, address, null, grade, city);
int result = dao.update(dto);

/* if (result > 0) {
	out.print("<script>");
	out.print("alert('회원 정보 수정이 완료되었습니다.');");
	out.print("location.href='MemberList.jsp';");
	out.print("</script>");
	out.print("<script>");
} */
%>