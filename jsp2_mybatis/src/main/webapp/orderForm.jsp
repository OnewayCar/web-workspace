<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>주문 입력</h3>
	<hr>
	<form action="orderConfirm.jsp" method="post">
		<!-- form 태그의 method를 **post**로 한다.  -->
		<input type="text" name="email" placeholder="고객이 메일을 입력하세요.">
		<input type="text" name="pcode" placeholder="상품코드 입력하세요."> 
		<input type="number" name="quantity" placeholder="수량을 입력하세요.">
		<button>주문</button>
	</form>
	<!--  button 태그에서 생략된 타입 설정은 **submit** -->
</body>
</html>