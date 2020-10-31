package com.app.pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.dao.CandidateDaoImpl;
import com.app.entity.Candidate;

@WebServlet("/Admin")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		try (PrintWriter pw = response.getWriter()) {
			HttpSession session = request.getSession();
			CandidateDaoImpl candidateDao = (CandidateDaoImpl) session.getAttribute("candidateDao");

			pw.print("<h1>Top Candidates</h1><br><table><th><h3>Name</h3></th><th><h3>Votes</h3></th>");
			List<Candidate> topCandidates = candidateDao.displayTopCandidates();
			for (Candidate candidate : topCandidates)
				pw.print("<tr><td><h3>" + candidate.getCandidateName() + "</h3></td><td><h3>"
						+ candidate.getCandidateVotes() + "</h3></td>");
			pw.print("</table>");

			pw.print("<h1>Political Party Votes</h1><br><table><th><h3>Party</h3></th><th><h3>Votes</h3></th>");

			LinkedHashMap<String, Integer> partyVotes = candidateDao.displayPartyWiseVotes();
			partyVotes.forEach((candidateName, candidateVotes) -> pw
					.print("<tr><td><h3>" + candidateName + "</h3></td><td><h3>" + candidateVotes + "</h3></td>"));

			pw.print("</table><br>");

			pw.print("<h2><a href='index.html'>HOME</a></h2>");

			session.invalidate();

		} catch (Exception e) {
			throw new ServletException("Error in doGet of" + getClass().getName(), e);
		}

	}
}