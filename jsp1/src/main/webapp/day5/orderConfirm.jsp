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
<jsp:useBean id = "order" class = "sample.dto.OrderDto" />
<jsp:setProperty property = "*" name="order"/>
<ul >
<li > 고객 이메일 : <jsp:getProperty property = "email" name="order" /></li >
<li > 상품코드 : <jsp:getProperty property = "pcode" name="order" /></li >
<li > 주문수량 : <jsp:getProperty property = "quantity" name="order"/></li >
</ul >
<!-- jsp:setPorperty와 getProperty 에서 name속성은 "order"로 선언해야한다.
	useBean의 id값과 같게 해야하기 때문 -->


<!-- 추가주문 버튼을 클릭했을 때 지정된 경로로 이동하기 위해 loacation객체의 href를 이동할 orderForm.jsp로 설정해준다. -->
<!-- 현재 페이지의 URL을 설정해주는 location객체의 href의 값에 orderForm.jsp를 대입하여
	 버튼이 클릭되었을 때, 현재 페이지의 URL을 대입한 파일로 지정하는 요청을 전달한다. -->
<button onclick = "location.href='orderForm.jsp'"> 추가 주문</button>
<%
OrderDao dao = OrderDao.getOrderDao();
if(dao.insert(order)==1){

%>

<script type = "text/javascript">
alert('주문완료 되었습니다.')
</script >

<%

}

%>
</body >
</html>