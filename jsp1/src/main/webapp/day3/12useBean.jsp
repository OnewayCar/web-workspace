<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dto" class="sample.dto.MyUser">
	</jsp:useBean>
	<jsp:setProperty property="uname" name="dto" param="uname" />
	<jsp:setProperty property="age" name="dto" param="age" />
	<jsp:setProperty property="address" name="dto" param="address" />
	<!-- getXXX 메소드 역할 -->

	<!-- getUname() 메소드 실행 기능 -->
	MyUser이름 :
	<jsp:getProperty property="uname" name="dto" />
	<!-- getAge() 메소드 실행 기능 -->
	나이 :
	<jsp:getProperty property="age" name="dto" />
	<!-- getAddress() 메소드 실행 기능 -->
	주소 :
	<jsp:getProperty property="address" name="dto" />
	
	<ul>
	<li>${dto.uname}</li>
	<li>${dto.age}</li>
	<li>${dto.address}</li>
	</ul>




	<!-- 10ScopeTest.jsp에서 아래 2개의 자바빈을 가져올 수 있는지 확인 -->
	<!-- 자바빈즈 2개를 다른 scope로 만들기 -->
	<jsp:useBean id="appDto" class="sample.dto.MyUser" scope="application" />
	<jsp:setProperty property="*" name="appDto" />
	
	<jsp:useBean id="sessionDto" class="sample.dto.MyUser" scope="session" />
	<jsp:setProperty property="*" name="sessionDto" />
	<%
	out.print(appDto);
	out.print("<br>");
	out.print(sessionDto);
	
	
	%>
<a href="10ScopeTest.jsp">10ScopeTest.jsp로 확인하러 가기</a>
</body>
</html>