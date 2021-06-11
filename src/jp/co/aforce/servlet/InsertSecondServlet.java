package jp.co.aforce.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.entity.MembersBean;
import jp.co.aforce.model.MembersDAO;

@WebServlet(urlPatterns = { "/servlet/InsertSecondServlet" })
public class InsertSecondServlet extends HttpServlet {
	public void doPost(
			HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MembersBean members = (MembersBean) request.getAttribute("members");
		int count = 0;
		MembersDAO dao = new MembersDAO();
		
		try {
			count = dao.insert(members);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			
		}
		request.setAttribute("count", count);

		RequestDispatcher rd = request.getRequestDispatcher("../jsp/insertResult.jsp");
		rd.forward(request, response);
	}

}
