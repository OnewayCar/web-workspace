<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 7top.jsp 에 전달되는 파라미터 입니다. 파라미터이름 "username" 값은 "kim" 예시입니다. -->
<jsp:include page="../day2/7top.jsp">
<jsp:param value="cha" name="username"/>
</jsp:include>
<main>
<h3>::::::::::main::::::::::</h3>
<a href="12useBean.jsp?uname=차일도&age=24&address=서울시">useBean 테스트</a><br>
<form action="12useBean.jsp">
<input placeholder="이름" name="uname">
<input placeholder="나이" name="age">
<input placeholder="주소" name="address">
<button>제출</button>
</form>

<form action="13Forward.jsp">
<input placeholder="이름" name="uname">
<input placeholder="나이" name="age">
<input placeholder="주소" name="address">
</form>
</main>
<jsp:include page="../day2/8bottom.jsp"/>
</body>
</html>