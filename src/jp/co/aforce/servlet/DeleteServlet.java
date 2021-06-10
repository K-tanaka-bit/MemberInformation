package jp.co.aforce.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.model.MembersDAO;

@WebServlet(urlPatterns = { "/servlet/DeleteServlet" })
public class DeleteServlet extends HttpServlet {
	public void doPost(
			HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int count = 0;
		String member_no = request.getParameter("member_no");
		
		try {
			MembersDAO dao = new MembersDAO();
			count = dao.delete(member_no);
			request.setAttribute("count", count);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		

		RequestDispatcher rd = request.getRequestDispatcher("../jsp/deleteResult.jsp");
		rd.forward(request, response);
	}
	

}
