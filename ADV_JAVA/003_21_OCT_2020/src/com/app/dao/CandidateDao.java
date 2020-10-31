package com.app.dao;

import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.List;

import com.app.entity.Candidate;

public interface CandidateDao {

	List<Candidate> getCandidateList() throws SQLException;

	String updateCandidateVotes(int candidateId) throws SQLException;

	List<Candidate> displayTopCandidates() throws SQLException;

	LinkedHashMap<String, Integer> displayPartyWiseVotes() throws SQLException;
}