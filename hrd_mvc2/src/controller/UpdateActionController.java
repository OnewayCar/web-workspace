package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import vo.MemberVo;

public class UpdateActionController implements Controller {
@Override
public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
MemberVo vo = new MemberVo(
		Integer.parseInt(request.getParameter("custno")),
		null, 
		request.getParameter("phone"),
		request.getParameter("address"),
		null,
		request.getParameter("grade"),
		request.getParameter("city")
		);
MemberDao dao = MemberDao.getMemberDao();
int result=0;
try {
	result=dao.update(vo);
} catch (SQLException e) {
}

response.setCharacterEncoding("UTF-8");
response.setContentType("text/html");
PrintWriter out = response.getWriter();
out.print("<script>");
if(result==1) {
	out.print("alert('회원 수정 성공')");
}else {
	out.print("alert('회원 수정 간 오류 발생')");
}

out.print("location.href='list.hrd'");

out.print("</script>");
}//handle



}//Controller
