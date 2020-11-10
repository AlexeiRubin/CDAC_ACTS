package com.app.beans;

import java.sql.SQLException;
import java.util.List;

import com.app.dao.CandidateDaoImpl;
import com.app.entity.Candidate;

public class CandidateBean {

	private CandidateDaoImpl candidateDao;
	private int candidateId;

	public CandidateBean() throws ClassNotFoundException, SQLException {
		candidateDao = new CandidateDaoImpl();
	}

	public void setCandidateId(int candidateId) {
		this.candidateId = candidateId;
	}

	public List<Candidate> getCandidateList() throws SQLException {
		return candidateDao.getCandidateList();
	}

	public void setCandidateVotes() throws SQLException {
		if (candidateId != 0)
			System.out.println(candidateDao.updateCandidateVotes(candidateId));
	}

	public List<Candidate> getTopCandidates() throws SQLException {
		return candidateDao.displayTopCandidates();
	}

	public List<Candidate> getPartyVotes() throws SQLException {
		return candidateDao.displayPartyWiseVotes();
	}
}