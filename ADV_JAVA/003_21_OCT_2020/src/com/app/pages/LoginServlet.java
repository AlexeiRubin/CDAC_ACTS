package com.app.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.dao.CandidateDaoImpl;
import com.app.dao.VoterDaoImpl;
import com.app.entity.Voter;

@WebServlet(urlPatterns = "/validate", loadOnStartup = 1)
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private VoterDaoImpl voterDao;
	private CandidateDaoImpl candidateDao;

	public void init() throws ServletException {
		try {
			voterDao = new VoterDaoImpl();
			candidateDao = new CandidateDaoImpl();
		} catch (Exception e) {
			throw new ServletException("Error in init of : " + getClass().getName(), e);
		}
	}

	public void destroy() {
		try {
			voterDao.cleanUp();
			candidateDao.cleanUp();
		} catch (Exception e) {
			throw new RuntimeException("Error in destroy of : " + getClass().getName(), e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		try (PrintWriter pw = response.getWriter()) {
			Voter voterEntity = voterDao.authenticateVoter(request.getParameter("email"),
					request.getParameter("password"));

			if (voterEntity == null)
				pw.print("<h3>Invalid Credentials : <a href='index.html'>RETRY</a></h3>");
			else {
				HttpSession session = request.getSession();

				session.setAttribute("validatedVoter", voterEntity);
				session.setAttribute("voterDao", voterDao);
				session.setAttribute("candidateDao", candidateDao);

				if (voterEntity.getVoterRole().equals("voter")) {
					if (voterEntity.getVoterStatus() == 0)
						response.sendRedirect("CandidateList");
					else
						response.sendRedirect("VoterStatus");
				} else
					response.sendRedirect("Admin");
			}
		} catch (Exception e) {
			throw new ServletException("Error in doPost of : " + getClass().getName(), e);
		}
	}
}