package jp.co.aforce.servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.entity.MembersBean;

@WebServlet(urlPatterns = { "/servlet/InsertFirstServlet" })
public class InsertFirstServlet extends HttpServlet {
	public void doPost(
			HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = null;
		MembersBean members = new MembersBean();

		if (request.getParameter("name").equals("") || request.getParameter("age").equals("") ||
				request.getParameter("birth_year").equals("") || request.getParameter("birth_month").equals("") ||
				request.getParameter("birth_day").equals("")) {
			url = "../jsp/insert.jsp";
			request.setAttribute("message", "入力されていない項目があります。");
		} else {
			
			url="InsertSecondServlet";
			String number = members.getMember_no();
			Timestamp timestamp = new Timestamp(System.currentTimeMillis());
			SimpleDateFormat sdf = new SimpleDateFormat("yyMMddhhmmss");
			String str = sdf.format(timestamp);
			number = "A" + str;

			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			int birth_year = Integer.parseInt(request.getParameter("birth_year"));
			int birth_month = Integer.parseInt(request.getParameter("birth_month"));
			int birth_day = Integer.parseInt(request.getParameter("birth_day"));
			
			members.setMember_no(number);
			members.setName(name);
			members.setAge(age);
			members.setBirth_year(birth_year);
			members.setBirth_month(birth_month);
			members.setBirth_day(birth_day);
			
			request.setAttribute("members", members);
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);		

	}

}
