package com.app.dao;

import static com.app.utils.DBUtils.getDBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.app.entity.Candidate;

public class CandidateDaoImpl implements CandidateDao {

	private Connection con;
	private PreparedStatement pstmt1, pstmt2, pstmt3, pstmt4;

	public CandidateDaoImpl() throws ClassNotFoundException, SQLException {
		con = getDBConnection();
		pstmt1 = con.prepareStatement("SELECT name, party, id FROM candidates");
		pstmt2 = con.prepareStatement("UPDATE candidates SET votes=votes+1 WHERE id=?");
		pstmt3 = con.prepareStatement("SELECT name, votes FROM candidates ORDER BY votes DESC LIMIT 2");
		pstmt4 = con.prepareStatement(
				"SELECT party, SUM(votes) AS votes FROM candidates GROUP BY party ORDER BY votes DESC");
	}

	@Override
	public List<Candidate> getCandidateList() throws SQLException {
		List<Candidate> candidateList = new ArrayList<>();
		try (ResultSet rst = pstmt1.executeQuery()) {
			while (rst.next())
				candidateList.add(new Candidate(rst.getString(1), rst.getString(2), rst.getInt(3)));
		}
		return candidateList;
	}

	@Override
	public String updateCandidateVotes(int candidateId) throws SQLException {
		pstmt2.setInt(1, candidateId);
		if (pstmt2.executeUpdate() == 1)
			return "CANDIDATES : UPDATE SUCCESSFUL";
		return "CANDIDATES : UPDATE FAILED";
	}

	@Override
	public List<Candidate> displayTopCandidates() throws SQLException {
		List<Candidate> candidateListLead = new ArrayList<>();
		try (ResultSet rst = pstmt3.executeQuery()) {
			while (rst.next())
				candidateListLead.add(new Candidate(rst.getString(1), rst.getInt(2)));
		}
		return candidateListLead;
	}

	@Override
	public LinkedHashMap<String, Integer> displayPartyWiseVotes() throws SQLException {
		LinkedHashMap<String, Integer> partyWiseVotes = new LinkedHashMap<>();
		try (ResultSet rst = pstmt4.executeQuery()) {
			while (rst.next())
				partyWiseVotes.putIfAbsent(rst.getString(1), rst.getInt(2));
		}
		return partyWiseVotes;
	}

	public void cleanUp() throws SQLException {
		if (pstmt1 != null)
			pstmt1.close();
		if (pstmt2 != null)
			pstmt2.close();
		if (pstmt3 != null)
			pstmt3.close();
		if (pstmt4 != null)
			pstmt4.close();
		if (con != null)
			con.close();
	}
}