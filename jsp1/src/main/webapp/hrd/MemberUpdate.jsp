<%@page import="sample.dto.Member"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./Index.css?v=3">
<link rel="stylesheet" href="./MemberUpdate.css?v=3">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<!-- header -->
		<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
		<!-- nav -->
		<!-- 반응형 웹페이지를 위해 메뉴는 목록 태그를 주로 사용합니다. 반응형 페이지 스타일은 레이아웃을 flexbox 사용해야 합니다. -->
		<ul>
			<li><a href="./MemberRegister.html">회원등록</a></li>
			<li><a href="./MemberList.jsp">회원목록조회/수정</a></li>
			<li><a href="./MemberSales.html">회원매출조회</a></li>
			<li><a href="./Index.html">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h3>홈쇼핑 회원 정보 수정</h3>
		<!-- action은 input 데이터를 전달받고 처리할 url 입니다.
 	  MemberSave.jsp 를 만드세요. 그리고 전달받은 파라미터로 update를 실행하도록 하세요.
 	  	ㄴ 이 파일에는 자바코드만 작성하고 태그는 필요 없습니다.
 	  MemberUpdate.jsp
 	  
  -->
		<form action="UpdateSave.jsp" method="post">
			<!-- 
 				이후 자바코드 작성할 때 가독성, 편리성을 위해
				input name 은 dto클래스의 변수명과 통일
 				UpdateSave.jsp 의 파리미터 저장 변수도 dto와 통일
  			-->
			<table>
				<tr>
					<td><label for="lblNo">회원번호</label></td>
					<!-- MemberList.jsp에서 보낸 파라미터를 받아 custno 변수에 저장하여 value에서 출력하기 -->

					<%
					String custno = request.getParameter("custno");
					MemberDao dao = MemberDao.getMemberDao();
					Member dto = null;
					if (custno != null) /* 수정할 데이터를 가져오기 (참고 : custno는 테이블의 PK값) */
					{
						dto = dao.selectOne(Integer.parseInt(custno));
					}

/* 					switch (dto.getGrade()) {
					case "A":
						dto.setGrade("VIP");
						break;
					case "B":
						dto.setGrade("일반");
						break;
					case "C":
						dto.setGrade("직원");
						break;

					} */
					%>
					<td><input type="number" id="lblNo" value="<%=custno%>"
						name="cust" disabled="disabled"> 
						<input type="hidden" name="custno" value="<%=custno%>">
					</td>
				</tr>
				<tr>
					<td><label for="lblname">회원성명</label></td>
					<td><input type="text" id="lblname"
						value="<%=dto.getCustname()%>" name="custname"></td>
				</tr>
				<tr>
					<td><label for="lblphone">회원전화</label></td>
					<td><input type="text" id="lblphone"
						value="<%=dto.getPhone()%>" name="phone"></td>
				</tr>
				<tr>
					<td><label for="lbladdr">회원주소</label></td>
					<td><input type="text" id="lbladdr"
						value="<%=dto.getAddress()%>" name="address"></td>
				</tr>
				<tr>
					<td><label for="lblsign">가입일자</label></td>
					<td><input type="text" id="lblsign"
						value="<%=dto.getJoindate()%>" name="joindate"></td>
				</tr>
				<tr>
					<td><label for="lblgrade">고객등급[A:VIP, B:일반, C:직원]</label></td>
					<td><input id="lblgrade" value="<%=dto.getGrade()%>" name="grade"></td>
				</tr>
				<tr>
					<td><label for="lblcode">도시코드</label></td>
					<td><input id="lblcode" value="<%=dto.getCity()%>" name="city"></td>
				</tr>
				<tr>
					<td colspan="2">
						<button>수정</button>
						<button type="button" onclick="location.href='MemberList.jsp'">조회</button>
			</table>
		</form>
	</section>


	<footer>
		<!-- footer -->
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human
			Resources Development Service of Korea.</h4>
	</footer>

</body>
</html>