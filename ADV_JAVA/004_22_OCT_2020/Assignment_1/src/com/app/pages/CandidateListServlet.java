package com.app.pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.dao.CandidateDaoImpl;
import com.app.entity.Candidate;

@WebServlet("/CandidateList")
public class CandidateListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		try (PrintWriter pw = response.getWriter()) {
			HttpSession session = request.getSession();

			CandidateDaoImpl candidateDao = (CandidateDaoImpl) session.getAttribute("candidateDao");

			List<Candidate> candidateList = new ArrayList<>();
			candidateList = candidateDao.getCandidateList();

			pw.print("<form action=VoterStatus method=post>");
			pw.print("<table><tr><td></td><td>Candidate Name</td><td>Party</td></tr>");

			for (Candidate candidate : candidateList)
				pw.print("<tr><td><input type='radio' name='candidateName' value='" + candidate.getCandidateId()
						+ "'></td><td>" + candidate.getCandidateName() + "</td><td>"
						+ candidate.getCandidatePoliticalParty() + "</td></tr>");
			pw.print("</table>");
			pw.print("<input type='submit' value='Vote'></form>");

		} catch (Exception e) {
			throw new ServletException("Error in doGet of : " + getClass().getName(), e);
		}
	}
}