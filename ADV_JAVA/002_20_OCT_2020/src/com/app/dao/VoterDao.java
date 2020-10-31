package com.app.dao;

import java.sql.SQLException;

import com.app.entity.Voters;

public interface VoterDao {

	Voters authenticateVoter(String email, String pwd) throws SQLException;
}