<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14beanForward.jsp</title>
</head>
<body>
	<h3>여기는 받는 곳</h3>
	<p>13Forward.jsp로부터 요청 전달을 받는 페이지 입니다.</p>
	<ul>
		<li>url은 무엇인가요? http://localhost:8081/jsp1/day3/13Forward.jsp </li>
		<li>화면에 표시되는 페이지는 무엇인가요? 14beanForward.jsp </li>
	</ul>
<p>요청이 전달될 때 URL은 변경되지 않습니다. 그리고 요청을 전달한 13Forward.jsp의 출력은 버퍼에서 삭제되므로 웹페이지에 표시되지 않습니다.
13Forward.jsp에서 jsp:useBean scope = "request"로 하면 자자빈 데이터가 14beanForward.jsp에 요청과 함께 전달됩니다.</p>
<!-- 자바빈을 사용하는 useBean
scope="request"를 작성하지 않으면, page 스코프에서 reqDto 찾습니다-->
<jsp:useBean id="reqDto" class="sample.dto.MyUser" scope="request"/>
<jsp:setProperty property="*" name="reqDto"/>
<%
out.println(reqDto);
%>

</body>
</html>