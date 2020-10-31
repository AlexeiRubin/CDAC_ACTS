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

@WebServlet("/VoterStatus")
public class VoterStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		try (PrintWriter pw = response.getWriter()) {

			HttpSession session = request.getSession();
			Voter voterEntity = (Voter) session.getAttribute("validatedVoter");

			if (voterEntity.getVoterStatus() == 0) {

				VoterDaoImpl voterDao = (VoterDaoImpl) session.getAttribute("voterDao");
				CandidateDaoImpl candidateDao = (CandidateDaoImpl) session.getAttribute("candidateDao");

				pw.print("<h2>Hello " + voterEntity.getVoterName()
						+ "</h2><br><h3>VOTE HAS BEEN CAST</h3><br><br><h2><a href='index.html'>HOME</a></h2>");

				String[] candidateIds = request.getParameterValues("candidateName");

				for (String candidateId : candidateIds)
					System.out.println(candidateDao.updateCandidateVotes(Integer.parseInt(candidateId)));

				System.out.println(voterDao.updateVoterStatus(voterEntity.getVoterId()));
			} else
				pw.print("<h2>Hello " + voterEntity.getVoterName()
						+ "</h2><br><h3>VOTE HAS BEEN ALREADY CAST</h3><br><br><h2><a href='index.html'>HOME</a></h2>");

			session.invalidate();

		} catch (Exception e) {
			throw new ServletException("Error in doPost of : " + getClass().getName(), e);
		}
	}
}