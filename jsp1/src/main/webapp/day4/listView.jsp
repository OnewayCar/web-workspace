<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 조회/수정</title>
<!-- 아래 href 주소는 애플리케이션이름(context)을 기준으로 하는 절대주소 -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Index.css?v=3">
<!-- el로 표기할 때에는 현재 페이지의 request를 가져와야하빈다.(pageContext.request) -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/MemberList.css?v=3">

</head>
<body>
<%-- 	<%
	MemberDao dao = MemberDao.getMemberDao();
	List<Member> list = dao.selectAll();
	// list를 태그에 출력하는 반복문은 foreach문 사용
	%> --%>
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
			<c:forEach items="${list }" var="dto">
				<tr>
					<td><a href="MemberUpdate.jsp?custno=${dto.custno }">
							${dto.custno }</a></td>
					<td><c:out value="${dto.custname }"></c:out></td>
					<td><c:out value="${dto.phone }"></c:out></td>
					<td><c:out value="${dto.address }"></c:out></td>
					<td><c:out value="${dto.joindate }"></c:out></td>
					<%-- <td><%=m.getGrade()%></td> --%>
					<td><c:choose>
							<c:when test="${dto.grade eq 'VIP' }">
								<span style='color: red;'>VIP</span>
							</c:when>
							<c:otherwise>
								<c:out value="${dto.grade }"></c:out>
							</c:otherwise>
						</c:choose></td>
					<td><c:out value="${dto.city }"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</section>



	<footer>
		<!-- footer -->
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human
			Resources Development Service of Korea.</h4>
	</footer>
</body>
</html>