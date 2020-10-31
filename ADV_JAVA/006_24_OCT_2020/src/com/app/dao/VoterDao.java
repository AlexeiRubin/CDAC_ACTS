package com.app.dao;

import java.sql.SQLException;

import com.app.entity.Voter;

public interface VoterDao {

	Voter authenticateVoter(String email, String pwd) throws SQLException;

	String updateVoterStatus(int voterId) throws SQLException;
}