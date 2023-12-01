<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 받기 : 3parameterRecieve.jsp</title>
</head>
<body>
<%
	// 파라미터값은 request 객체의 getParameter("파라미터이름")으로 합니다.
	// 전달받은 파라미터는 모두 String  입니다.
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	out.print("이름 : "+name);
	out.print("<br>");
	out.print("나이 : "+age);
	out.print("<br>");
	
	// 아래 코드도 같이 테스트
	if(age != null){
	int iage = Integer.parseInt(age);	
	}// age가 null일 땐 parseInt()메소드 동작 자체가 안됨 - Exception(예외) 발생
%>
</body>
</html>