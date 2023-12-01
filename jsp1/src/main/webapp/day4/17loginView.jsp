<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>17loginView.jsp</title>
</head>
<body>
	<!-- 패스워드 입증 방법으로 로그인 : id,pw 입력 -->

	<!-- 1번째방법 : 평문을 서버가 받으면 해쉬함수를 만들어 db에 ㅏ잦ㅇ -->

	<form action="18loginAction.jsp" method="post">

		<input type="text" name="userid" placeholder="아이디를 입력하세요." > <br>
		<input type="password" name="password" placeholder="비밀번호를 입력하세요." ><br>
		<button>로그인</button>


	</form>
</body>
</html>