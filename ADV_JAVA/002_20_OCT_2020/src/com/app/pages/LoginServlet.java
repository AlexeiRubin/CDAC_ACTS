package com.app.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.dao.VoterDaoImpl;
import com.app.entity.Voters;

/**
 * Servlet implementation class Login
 */
@WebServlet(urlPatterns = "/validate", loadOnStartup = 1)
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private VoterDaoImpl dao;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
		try {
			dao = new VoterDaoImpl();
		} catch (Exception e) {
			throw new ServletException("Error in init of : " + getClass().getName(), e);
		}
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		try {
			dao.cleanUp();
		} catch (Exception e) {
			throw new RuntimeException("Error in destroy of : " + getClass().getName(), e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		try (PrintWriter pw = response.getWriter()) {
			String enteredEmail = request.getParameter("email");
			String enteredPassword = request.getParameter("password");

			Voters voterEntity = dao.authenticateVoter(enteredEmail, enteredPassword);

			if (voterEntity == null)
				pw.print("<h3>Invalid Credentials : <a href='index.html'>RETRY</a></h3>");
			else {
				HttpSession session = request.getSession();
				session.setAttribute("validatedVoter", voterEntity);
				pw.print(
						"<h3>Logged In Successfully <a href='cookieInfo'>Click Here to See Cookie Information</a></h3>");
			}
		} catch (Exception e) {
			throw new ServletException("Error in doPost of : " + getClass().getName(), e);
		}
	}
}
