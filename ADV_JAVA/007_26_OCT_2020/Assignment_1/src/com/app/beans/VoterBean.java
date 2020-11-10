package com.app.beans;

import java.sql.SQLException;

import com.app.dao.VoterDaoImpl;
import com.app.entity.Voter;

public class VoterBean {

	private VoterDaoImpl voterDao;
	private String email, password;
	private Voter voterEntity;
	private String message;

	public VoterBean() throws ClassNotFoundException, SQLException {
		voterDao = new VoterDaoImpl();
	}

	public VoterDaoImpl getVoterDao() {
		return voterDao;
	}

	public void setVoterDao(VoterDaoImpl voterDao) {
		this.voterDao = voterDao;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Voter getVoterEntity() {
		return voterEntity;
	}

	public void setVoterEntity(Voter voterEntity) {
		this.voterEntity = voterEntity;
	}

	public String getMessage() {
		return message;
	}

	public String authenticateUser() throws SQLException {
		voterEntity = voterDao.authenticateVoter(email, password);

		if (voterEntity == null) {
			message = "INVALID LOGIN";
			return "login";
		}

		message = "VALID LOGIN";

		if (voterEntity.getVoterRole().equals("admin"))
			return "admin";

		if (voterEntity.getVoterStatus() == 0)
			return "candidateList";

		return "voterStatus";
	}

	public String getVoterStatus() throws SQLException {
		if (voterEntity.getVoterStatus() == 0) {
			System.out.println(voterDao.updateVoterStatus(voterEntity.getVoterId()));
			return "VOTE HAS BEEN CAST";
		}
		return "VOTE HAS BEEN ALREADY CAST";
	}
}