<%@page import="org.iclass.dto.CommunityComments"%>
<%@page import="org.iclass.dao.CommunityCommentsDAO"%>
<%@page import="java.util.List"%>
<%@page import="org.iclass.dto.Community"%>
<%@page import="org.iclass.dao.CommunityDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long idx=0; 
	int pageNo =0;
	if(request.getParameter("idx") !=null) {
      idx = Long.parseLong(request.getParameter("idx"));
	}
            //글 상세보기를 클릭한 페이지의 번호를 파라미터로 가져오는 이유 : 글 상세보기에서 다시 글목록으로 돌아갈때를 위해서.
            //						ㄴ 보고 있던 글 목록 페이지로 돌아가기. 
    if(request.getParameter("page")!=null) {
        pageNo = Integer.parseInt(request.getParameter("page"));
    }
            
   	CommunityDAO dao = CommunityDAO.getCommunityDAO();
    dao.setReadCount(idx);			//조희수 증가
    Community vo = dao.selectByIdx(idx);	//idx 글 조회하기

    //(1)
    request.setAttribute("vo", vo);
    //(2)
    request.setAttribute("page", pageNo);
    //pageContext.forward("readView.jsp");		//화면에 애트리뷰트와 함께 요청 전달.
    
    //(3)
    CommunityCommentsDAO cmtdao=CommunityCommentsDAO.getInstance();
    List<CommunityComments> cmtlist=cmtdao.commentsList(idx);
    
    request.setAttribute("cmtlist",cmtlist);
    
    pageContext.forward("readView.jsp");
%>