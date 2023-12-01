<%@page import="java.util.List"%>
<%@page import="sample.dao.ProductDAO"%>
<%@page import="sample.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 처리 -->
	<%
	ProductDAO dao = ProductDAO.getProductDAO();
	List<ProductDTO> list = dao.getProducts();
	/* jsp:useBean(scope=request) 와 jsp:forward 태그와 동일한 명령 */
	request.setAttribute("list", list);
	pageContext.forward("mproductListView.jsp");
	
	%>
</body>
</html>