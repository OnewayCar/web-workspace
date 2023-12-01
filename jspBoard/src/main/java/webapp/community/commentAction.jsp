<%@page import="org.iclass.dao.CommunityCommentsDAO"%>
<%@page import="org.iclass.dto.CommunityComments"%>
<%@page import="org.iclass.dto.BookUser"%>
<%@page import="java.awt.print.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/* 필요한 파라미터 가져오기 : mref,writer,content,f(insert 혹은 delete), page */
	long mref = Long.parseLong(request.getParameter("mref"));
	String f = request.getParameter("f");
	String pageNo = request.getParameter("page");
	String content = request.getParameter("content");
	BookUser user = (BookUser) session.getAttribute("user");
	String writer = user.getId();
	CommunityCommentsDAO dao = CommunityCommentsDAO.getInstance();

	if (f.equals("1")) {
		CommunityComments dto = CommunityComments.builder().mref(mref).content(content).writer(writer).build();
		if (dao.insert(dto) == 1) {
			dao.setCommentCount(mref);
			request.setAttribute("message", "댓글 등록이 완료되었습니다.");
			request.setAttribute("url", "read.jsp?idx=" + mref + "&page=" + pageNo);
			pageContext.forward("alert.jsp");
		}

	} else if (f.equals("2")) {
		/* 댓글 삭제 기능 */
		long idx = Long.parseLong(request.getParameter("idx"));
		dao.delete(idx);
		dao.setCommentCount(mref);
		request.setAttribute("message", "댓글 삭제가 완료되었습니다.");
		request.setAttribute("url", "read.jsp?idx=" + mref + "&page=" + pageNo);
		pageContext.forward("alert.jsp");
	} else {
		throw new IllegalAccessException();
	}
	%>
</body>
</html>