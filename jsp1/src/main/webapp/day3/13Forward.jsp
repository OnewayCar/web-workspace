<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13Forward.jsp</title>
</head>
<body>
<!-- 자바빈을 생성하는 useBean -->
<jsp:useBean id="reqDto" class="sample.dto.MyUser" scope="request"/>
<jsp:setProperty property="*" name="reqDto"/>
<!-- A.jsp 가 받은 요청을 B.jsp에게 전달해주는 동작이 forward 입니다. -->
<h3>여기는 보내는 곳</h3>
<p>13Forward.jsp가 요청 전달을 보내는 페이지 입니다.</p>
* 주의 : 실행은 13Forward.jsp에서 합니다. (보내는 곳에서)
<jsp:forward page="14beanForward.jsp"></jsp:forward>




</body>
</html>