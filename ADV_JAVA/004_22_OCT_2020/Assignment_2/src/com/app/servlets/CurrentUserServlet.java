package com.app.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CurrentUser")
public class CurrentUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		HttpSession session = request.getSession();
		int userCounter = 0;

		synchronized (getServletContext()) {
			userCounter = (Integer) getServletContext().getAttribute("userCount");
		}
		try (PrintWriter pw = response.getWriter()) {
			pw.print("<h3>CURRENT USER COUNT : " + userCounter + "</h3><br>");
			pw.print("<h5><a href='Logout'>LOGOUT</h5>");
		}
	}
}