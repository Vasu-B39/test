package com.xworkz.mock.app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/list", loadOnStartup = 1)
public class ListCollection extends HttpServlet{

	public ListCollection() {
		System.out.println("Created List for application servlet................");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String srlNo = req.getParameter("srlNo");
		String fname = req.getParameter("fname");
		String mname = req.getParameter("mname");
		String lname = req.getParameter("lname");
		String email = req.getParameter("email");
		String area = req.getParameter("area");
		String district = req.getParameter("district");
		String state = req.getParameter("state");
		String pincode = req.getParameter("pincode");
		
		req.setAttribute("srlNo", srlNo);
		req.setAttribute("fname", fname);
		req.setAttribute("mname", mname);
		req.setAttribute("lname", lname);
		req.setAttribute("email", email);
		req.setAttribute("area", area);
		req.setAttribute("district", district);
		req.setAttribute("pincode", pincode);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("listSuccessfull.jsp");
		dispatcher.forward(req, resp);

	}

}
