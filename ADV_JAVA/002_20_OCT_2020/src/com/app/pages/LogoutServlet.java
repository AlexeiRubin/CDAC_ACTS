package com.app.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.entity.Voters;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		try (PrintWriter pw = response.getWriter()) {
			HttpSession hs = request.getSession();

			Voters voterEntity = (Voters) hs.getAttribute("validatedVoter");
			if (voterEntity != null) // session tracking works!!!!!!
			{
				pw.print("<h5> Hello , " + voterEntity.getVoterName() + " , you have logged out successfully!!!!</h5>");
				hs.invalidate();
			} else
				pw.print("<h5>Session NOT Tracked</h5>");

			pw.print("<h5><a href='index.html'>LOGIN</a></h5>");

		}
	}
}