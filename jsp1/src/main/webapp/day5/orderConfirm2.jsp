<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderForm.jsp</title>
</head>
<body >
<h3 > 주문 확인</h3 >
<hr	>
<!-- 처리와 화면의 기능을 나누기 위해 서는 scope를 request로 설정하여  -->
<jsp:useBean id = "order" class = "sample.dto.OrderDto" scope="request" />
<jsp:setProperty property = "*" name="order"/>


<button onclick="#"> 추가 주문</button>
<%
OrderDao dao = OrderDao.getOrderDao();
if(dao.insert(order)==1){

%>

<!-- orderConfirm2가 받은 HTTP요청을 orderResult.jsp로 전달시켜준다. -->
<jsp:forward page="orderResult.jsp"/>

<%

}

%>
</body >
</html>