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
<!-- 위에서 생성된 자바빈에 프로퍼티(클래스의 변수) 값을 저장
	getParameter 와 setXXX 메소드를 실행합니다. -->
 <!-- name="dto"는 useBean태그의 id 값으로 정합니다. -->
 <jsp:setProperty property="uname" name="dto" param="myname"/>
 <jsp:setProperty property="age" name="dto" param="myage"/>
 <jsp:setProperty property="address" name="dto" param="myaddress"/>
<!-- getXXX 메소드 역할 -->

<!-- getUname() 메소드 실행 기능 -->
 MyUser이름 : <jsp:getProperty property="uname" name="dto"/>
<!-- getAge() 메소드 실행 기능 -->
 나이 : <jsp:getProperty property="age" name="dto"/>
<!-- getAddress() 메소드 실행 기능 -->
 주소 : <jsp:getProperty property="address" name="dto"/>
</body>
</html>