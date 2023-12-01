<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2rquest.jsp</title>
</head>
<body>

	<ul>
		<!-- loclahost는 네트워킁 연결될 수 없는 내 컴퓨터 -->
		<li>요청 URL : <%=request.getRequestURL()%></li>
		
		<li>요청 URI : <%=request.getRequestURI()%></li>
		<li>컨텍스트(context) : <%=request.getContextPath()%></li>

		<li>클라이언트ip : <%=request.getRemoteAddr()%></li>
		<li>host : <%=request.getRemoteHost()%></li>
		<li>클라이언트 포트 : <%=request.getRemotePort()%></li>

		<li>서버ip : <%=request.getLocalAddr()%></li>
		<li>host : <%=request.getLocalName()%></li>
		<li>서버 포트 : <%=request.getLocalPort()%></li>

	</ul>
	<h4>브라우저 주소가 http:///192.168.0.13:8081/jsp1/day1/2request.jsp
	<h5>클라이언트 ip는  192.168.0.13</h5>
	<ul>
		<li>요청 URL : http://localhost:8081/jsp1/day1/2request.jsp</li>
		<li>요청 URI : /jsp1/day1/2request.jsp</li>
		<li>컨텍스트(context) : /jsp1</li>
		<!-- 아래의 ip는 IPv6 -->
		<li>클라이언트ip :클라이언트ip : 127.0.0.1</li>
		<li>host : host : 127.0.0.1</li>
		<li>클라이언트 포트 : 클라이언트 포트 : 55619</li>
		<!-- 이클립스에서 IPv4로 표시되게 설정을 바꿉시다 -->
		<li>서버ip : 서버ip : 127.0.0.1</li>
		<li>host : host : 127.0.0.1</li>
		<li>서버 포트 :서버 포트 : 8081
</li>
	</ul>
</body>
</html>