<%@page import="sample.dto.Member"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 등록</title>
<link rel="stylesheet" href="./Index.css?v=3">
<!-- link태그 : 외부 리소스를 문서에 연결하는데 사용됨
		 주로 CSS, 아이콘, 폰트 등을 문서에 적용하기 위해 사용 -->
<!-- href 속성 : 연결할 리소스의 경로를 지정 -->
<!-- rel 속성 : 관계를 나타내는 속성.
		 rel="stylesheet" : 연결된 파일이 스타일시트(CSS)임을 나타냄 -->
<!-- '?v=3' : CSS 파일을의 버전을 나타냄  -->
<!-- 연결할 파일이 스타일시트(CSS)이며 현재 디렉토리의 'Index.css' 파일을 불러옴. -->
<link rel="stylesheet" href="./MemberRegister.css?v=3">
<!-- 연결할 파일이 스타일시트(CSS)이며 현재 디렉토리의 'MemberRegister.css' 파일을 불러옴. -->
</head>
<body>
	<%
	String custno = request.getParameter("custno");
	MemberDao dao = MemberDao.getMemberDao();
	Member dto = null;
	if (custno != null) /* 수정할 데이터를 가져오기 (참고 : custno는 테이블의 PK값) */
	{
		dto = dao.selectOne(Integer.parseInt(custno));
	}
	%>
	<header>
		<!-- header -->
		<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
		<!-- nav -->
		<!-- 반응형 웹페이지를 위해 메뉴는 목록 태그를 주로 사용합니다. 반응형 페이지 스타일은 레이아웃을 flexbox 사용해야 합니다. -->
		<ul>
			<!-- 순서 없는 목록으로 나타내어 메뉴 항목(li)을 나열 -->
			<li><a href="./MemberRegister.jsp">회원등록</a></li>
			<li><a href="./MemberList.jsp">회원목록조회/수정</a></li>
			<li><a href="./MemberSales.html">회원매출조회</a></li>
			<li><a href="./Index.html">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h2>홈쇼핑 회원 등록</h2>
		<form action="registerSave2.jsp">
			<!-- <form> 태그는 action 속성을 통해 양식 데이터를 처리할 서버 측 스크립트의 URL을 지정합니다.
  또한, method 속성을 사용하여 데이터를 전송하는 방식을 지정할 수 있으며, 
  일반적으로 GET 또는 POST 방식이 사용됩니다. -->
			<table>
				<tr>
					<td><label for="lblNo">회원번호(자동생성)</label></td>
					<td><input type="number" id="lblNo" value="<%=custno%>"
						name="cust" disabled="disabled"> <input type="hidden"
						name="custno" value="<%=custno%>"></td>
					<!-- input 요소의 속성으로는 숫자를 입력받을 수 있는 입력상자.
 		     disable 속성을 disable로 설정하여 입력필드를 비활성화 하여, 사용자로부터 직접 입력을 받지 않게 설정 -->
					<!-- label 요소의 for 속성값과 input요소의 id 속성값을 같게하여
 		     레이블을 클릭하면 해당 입력필드가 자동으로 포커스 되도록 설정 -->
				</tr>
				<tr>
					<td><label for="lblname">회원성명</label></td>
					<td><input type="text" id="lblname" name="name"
						value="<%=dto.getCustname()%>"></td>
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
						<!-- colspan 속성은 셀이 여러 열을 차지하는데 사용되는 속성입니다.
 				colspan="2" : 2개의의 요소가 한 줄을 모두 차지. 이 코드에서는 2개의 버튼이 한 줄을 모두 차지
 			  -->
						<button onclick="alert('등록되었습니다.')">등록</button> <!-- onclick 속성을 해당 요소를 클릭했을 때의 실행되는 JavaScript코드를 지정. -->
						<!--    onclick 속성을 통해등록버튼 클릭시 '등록되었습니다.'라는 경고창이 표시 -->
						<button type="button" onclick="location.href='MemberList.jsp'">조회</button>
						<!-- button 요소의 ' type="button" ' 속성은 버튼의 기본 동작을 방지
 					 form의 제출 시도나 페이지 새로고침 등의 기본 동작 방지 --> <!-- onclick 속성을 통해 2번째 조회버튼 클릭시 MemberList.html페이지로 이동-->
			</table>
		</form>
	</section>


	<footer>
		<!-- footer -->
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human
			Resources Development Service of Korea.</h4>
	</footer>


<!-- 	<script type="text/javascript">
		let today = new Date()
		document.getElementById('lblsign').value = dateFormat(today)
		today.setFullYear(today.getFullYear() + 1)
		document.getElementById('expDate').innerHTML = dateFormat(today)

		function dateFormat(vdate) {
			const year = vdate.getFullYear()
			const month = (vdate.getMonth() + 1).toString().padStart(2, '0')
			const date = vdate.getDate().toString().padStart(2, '0')
			let result = [ year, month, date ].join('-')
			return result
		}
	</script> -->

</body>
</html>