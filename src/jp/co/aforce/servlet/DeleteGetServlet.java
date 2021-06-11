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

@WebServlet(urlPatterns = { "/servlet/DeleteGetServlet" })
public class DeleteGetServlet extends HttpServlet{
	public void doPost(
			HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MembersDAO dao = new MembersDAO();
		String member_no = request.getParameter("member_no");
		String url = null;
		MembersBean members= new MembersBean();
		
		try {
			members = dao.select(member_no);
			
			if(members!=null) {
				url ="../jsp/delete.jsp";
				request.setAttribute("members", members);
				}else {
					
					url ="../jsp/error.jsp";
				}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
		
	}

}
