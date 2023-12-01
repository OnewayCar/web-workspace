<%@page import="sample.dto.OrderDto"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
<!-- 요청객체 request에서 email이라는 파라미타ㅓ의 값을 가져와서 문자열 email이 참조하게 합니다. -->
<%
String email = request.getParameter("email");
OrderDao dao = OrderDao.getOrderDao();
List<OrderDto> list = dao.selectByEmail(email);
%>
<h3 > <%= email %> 고객 주문 현황</h3 >
<hr >
<table style =" width : 500px ;" >
<tr > <th style =" width : 200px ;" > 상품코드</th ><th style =" width : 100px ;" > 수량</th >
<th style =" width : 200px ;" > 주문날짜</th >
</tr >

<!-- list리스트에 있는 Oreder객체를 하나씩 뽑아서 사용하기 위한 for문 -->
<%
for(OrderDto dto : list) {
%>

<tr > <td style =" text-align : center ;" > <%= dto.getPcode() %> </td >
<td style =" text-align : center ;" > <%= dto.getQuantity() %> </td >
<td style =" text-align : center ;" > <%= dto.getOrderdate() %> </td >
</tr >

<%
}
%>
</table >
</body > 

</html>