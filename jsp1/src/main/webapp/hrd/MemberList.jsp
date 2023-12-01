<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록조회/수정</title>
<link rel="stylesheet" href="./Index.css?v=3">
<link rel="stylesheet" href="./MemberList.css?v=3">
</head>
<body>
	<%
	MemberDao dao = MemberDao.getMemberDao();
	List<Member> list = dao.selectAll();
	// list를 태그에 출력하는 반복문은 foreach문 사용
	%>
	<header>
		<!-- header -->
		<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
		<!-- nav -->
		<!-- 반응형 웹페이지를 위해 메뉴는 목록 태그를 주로 사용합니다. 반응형 페이지 스타일은 레이아웃을 flexbox 사용해야 합니다. -->
		<ul>
			<li><a href="./MemberRegister.jsp">회원등록</a></li>
			<li><a href="./MemberList.jsp">회원목록조회/수정</a></li>
			<li><a href="./MemberSales.html">회원매출조회</a></li>
			<li><a href="./Index.html">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h2>회원목록조회/수정</h2>
		<table>
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
			</tr>


			<%
			// for문 시작
			for (Member m : list) {
			%>
			<tr>
				<td><a href="MemberUpdate.jsp?custno=<%=m.getCustno()%>"> <%=m.getCustno()%></a></td>
				<td><%=m.getCustname()%></td>
				<td><%=m.getPhone()%></td>
				<td><%=m.getAddress()%></td>
				<td><%=m.getJoindate()%></td>
				<%-- <td><%=m.getGrade()%></td> --%>
				<td>
					<!-- out : jsp 객체. html 문서에 출력기능을 갖고 텍스트와 태그를 출력합니다.
					별도의 선언 없이 사용하는 내장(embaded) 객체입니다.	
				 --> <%
 if (m.getGrade().equals("VIP"))
 	out.println("<span style = 'color:red;'>VIP</span>");
 else
 	out.println(m.getGrade());
 %>
				</td>
				<td><%=m.getCity()%></td>
				<!-- 스크입트릿, 표현식 등 자바코드 주석기호는 아래와 같습니다. -->
				<%-- <td><%=m.getCity()%></td> --%>
				<!-- 스크립트릿 자바코드 위치는 body 안 어디에나 가능합니다. -->
			</tr>
			<%
			} // for문 끝
			%>
		</table>
	</section>



	<footer>
		<!-- footer -->
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human
			Resources Development Service of Korea.</h4>
	</footer>
</body>
</html>