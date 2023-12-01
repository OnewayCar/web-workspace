<%@page import="sample.dao.ProductDAO"%>
<%@page import="sample.dto.ProductDTO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 처리기능 -->
<%
String path="d:\\upload";
int size =10*1024*1024;

// 파일업로드에서는 일반적인 request가 아닌 MultipartRequest를 사용합니다.
// 								--> 외부 라이브러리 필요합니다.

MultipartRequest multiRequest = new MultipartRequest(
		request,						// 원래의 요청 객체
		path,							// 업로드용 경로
		size,							// 파일 최대 크기
		"UTF-8",						// 파일명 인코딩
		new DefaultFileRenamePolicy()	// 중복된 파일이름 변경 정책
		);

String pname = multiRequest.getParameter("pname");
String price = multiRequest.getParameter("price");
String picture = multiRequest.getFilesystemName("picture");

// 여기까지 실행된 결과 확인
out.print(pname);out.print("<br>");
out.print(price);out.print("<br>");
out.print(picture);out.print("<br>");

ProductDTO dto = new ProductDTO(pname,Integer.parseInt(price),null,picture);
ProductDAO dao = ProductDAO.getProductDAO();
int result=dao.insert(dto);

%>
<script type="text/javascript">
alert('상품 등록이 완료되었습니다.');
location.href='productListAction.jsp';


</script>
</body>
</html>