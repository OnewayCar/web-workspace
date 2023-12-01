package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dao.SaleDao;
import vo.MemberVo;
import vo.SaleVo;

public class SaleController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<SaleVo> list = new ArrayList<>();
		SaleDao dao = SaleDao.getSaleDao();
		try {
			list = dao.salesTotal();
		} catch (SQLException e) {
		}
		

		request.setAttribute("list", list); // jsp 에 출력(전달)

		RequestDispatcher dispatcher = request.getRequestDispatcher("saleView.jsp");
		dispatcher.forward(request, response);
	}
}
