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

@WebServlet(urlPatterns = { "/servlet/UpdateServlet" })
public class UpdateServlet extends HttpServlet{
	public void doPost(
			HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url =null;
		int count=0;
		
		if (request.getParameter("member_no").equals("")||request.getParameter("name").equals("") || request.getParameter("age").equals("") ||
				request.getParameter("birth_year").equals("") || request.getParameter("birth_month").equals("") ||
				request.getParameter("birth_day").equals("")) {
			url = "../jsp/update.jsp";
			request.setAttribute("message", "入力されていない項目があります。");
		} else {
		MembersBean members = new MembersBean();
		members.setMember_no(request.getParameter("member_no"));
		members.setName( request.getParameter("name"));
		members.setAge(Integer.parseInt(request.getParameter("age")));
		members.setBirth_year(Integer.parseInt(request.getParameter("birth_year")));
		members.setBirth_month(Integer.parseInt(request.getParameter("birth_month")));
		members.setBirth_day(Integer.parseInt(request.getParameter("birth_day")));
		
		try {
			MembersDAO dao = new MembersDAO();
			count = dao.update(members);
			request.setAttribute("count", count);
			url="../jsp/updateResult.jsp";
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		}

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
		
		
		
	}


