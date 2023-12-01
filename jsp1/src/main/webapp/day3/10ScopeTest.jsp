<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10ScopeTest.jsp</title>
</head>
<body>

	<h3>scope 테스트</h3>
	<hr>X
	<h4>application</h4>
	<!-- applicationScope에 저장된 appDto 자바빈을 가져오기 -->
	<jsp:useBean id="appDto" class="sample.dto.MyUser" scope="application" />
	<%
	out.println(appDto);
	%>
	<ul>
		<li>${appDto.uname}</li> <!-- getter 메소드 대신 필드명으로 접근 가능 -->
		<li>${appDto.age}</li>
		<li>${appDto.address}</li>
	</ul>




	<h4>session</h4>
	<!-- sessionScope에 저장된 sessionDto 자바빈을 가져오기 -->
	<jsp:useBean id="sessionDto" class="sample.dto.MyUser" scope="session" />
	<%
	out.println(sessionDto);
	%>
		<ul>
		<li>${sessionDto.uname}</li>
		<li>${sessionDto.age}</li>
		<li>${sessionDto.address}</li>
	</ul>
	<h4>?? scope미정 ??</h4>
	<jsp:useBean id="dto" class="sample.dto.MyUser" />
	<%
	out.println(dto);
	%>

</body>
</html>