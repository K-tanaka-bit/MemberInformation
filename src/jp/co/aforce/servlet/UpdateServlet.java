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
		
		int count=0;
		
		String member_no =request.getParameter("member_no");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		int birth_year = Integer.parseInt(request.getParameter("birth_year"));
		int birth_month = Integer.parseInt(request.getParameter("birth_month"));
		int birth_day = Integer.parseInt(request.getParameter("birth_day"));
		
		MembersBean members = new MembersBean();
		
		members.setMember_no(member_no);
		members.setName(name);
		members.setAge(age);
		members.setBirth_year(birth_year);
		members.setBirth_month(birth_month);
		members.setBirth_day(birth_day);
		
		try {
			MembersDAO dao = new MembersDAO();
			count = dao.update(members);
			request.setAttribute("count", count);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		RequestDispatcher rd = request.getRequestDispatcher("../jsp/updateResult.jsp");
		rd.forward(request, response);
	}
	
		
		
		
	}


