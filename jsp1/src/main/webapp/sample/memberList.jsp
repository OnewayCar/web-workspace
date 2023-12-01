<%@page import="sample.dto.Member"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample JSP</title>
</head>
<body>
<%
   /* 스크립트릿 : 자바 코드가 들어갈 수 있는 기호. */   
   MemberDao dao = MemberDao.getMemberDao();
   List<Member> list = null;
   
   try {
        list = dao.selectAll();
    } catch (Exception e) {
        out.println("Error fetching data: " + e.getMessage());
    }
%>
<h3>회원목록</h3>
<table border="1">
    <tr>
        <th>고객번호</th>
        <th>이름</th>
        <th>전화번호</th>
        <th>회원주소</th>
        <th>가입일자</th>
        <th>회원등급</th>
        <th>도시코드</th>
    </tr>
    <%
        if (list != null && !list.isEmpty()) {
            for (Member member : list) {
    %>
    <tr>
        <td><%= member.getCustno() %></td>
        <td><%= member.getCustname() %></td>
        <td><%= member.getPhone() %></td>
        <td><%= member.getAddress() %></td>
        <td><%= member.getJoindate() %></td>
        <td><%= member.getGrade() %></td>
        <td><%= member.getCity() %></td>
    </tr>
    <%
            }
        } else {
    %>
    <tr>
        <td colspan="3">회원이 없습니다.</td>
    </tr>
    <%
        }
    %>
    </table>
<%-- <%= list %> --%>    <!-- 표현식 : 변수, 수식 등 리턴값이 있는 것들 -->
</body>
</html>