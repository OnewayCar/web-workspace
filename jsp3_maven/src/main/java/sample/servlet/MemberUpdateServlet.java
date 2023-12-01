package sample.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * url 을 주소창에 http://localhost:8081/jsp3_maven/member/list.do 
 * 입력하고 엔터를 치면 실행되는 자바 서블릿
 * url 매핑 2가지 방법
 * 		ㄴ 어노테이션 사용
 * 		ㄴ web.xml에서 servlet 태그로 설정
 * 
 */
@WebServlet("/member/update.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberUpdateServlet() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
	}

	// service 가 재저으이 메소드로 보이면 doGet 또는 doPost는 실행이 안됩니다.
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().print("I am service method");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();	//html로 보ㅗ낼 출력스트림 객체 생성
												//html 문서는 http응답으로 전달되므로 출력 스트림은 response 객체로 생성
		out.append("Served at : ").append(request.getContextPath())
		.append("<br>")	//html 태그 안에 있을 때만 동작합니다.
		.append(request.getRequestURL())
		.append("<br>")
		.append(request.getCharacterEncoding());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
