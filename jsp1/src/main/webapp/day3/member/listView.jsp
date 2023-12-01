<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listView.jsp _ 화면 출력 페이지</title>
</head>
<body>
	<ul>
		<c:forEach items="${list }" var="vo">
			<li>${vo }</li>
		</c:forEach>

	</ul>
	<hr>
	<ul>
		<!-- list 애트리뷰트는  -->
		<c:forEach items="${list }" var="vo">
			<li><c:out value="${vo.custno }"></c:out></li>
			<li><c:out value="${vo.custname }"></c:out></li>
			<li><c:out value="${vo.phone }"></c:out></li>
			<li><c:out value="${vo.address }"></c:out></li>
			<hr>
			<!-- 아래 코드는 없는 필드이므로 오류 -->
			<%-- <li>${vo.city }</li> --%>
		</c:forEach>
	</ul>

	<table>
		<tr>
		</tr>

	</table>
	<!-- request.getAttribute("list",list) 실행 + List<Member>타입변환 + 출력 -->
	<!-- 출력을 반복해서 테이블 tr 태그에 넣기 : jstl.jsp attribute(자바빈)은 자바 for문으로는 못함 -->
</body>
</html>