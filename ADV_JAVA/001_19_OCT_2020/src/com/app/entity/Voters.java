package com.app.entity;

public class Voters {

	private int voterId;
	private String voterName, voterEmail, voterPassword;
	private boolean voterStatus;
	private String voterRole;

	public Voters() {
		this.voterId = 0;
		this.voterName = null;
		this.voterEmail = null;
		this.voterPassword = null;
		this.voterStatus = false;
		this.voterRole = null;
	}

	public Voters(int voterId, String voterName, String voterEmail, String voterPassword, boolean voterStatus,
			String voterRole) {
		this.voterId = voterId;
		this.voterName = voterName;
		this.voterEmail = voterEmail;
		this.voterPassword = voterPassword;
		this.voterStatus = voterStatus;
		this.voterRole = voterRole;
	}

	public int getVoterId() {
		return voterId;
	}

	public void setVoterId(int voterId) {
		this.voterId = voterId;
	}

	public String getVoterName() {
		return voterName;
	}

	public void setVoterName(String voterName) {
		this.voterName = voterName;
	}

	public String getVoterEmail() {
		return voterEmail;
	}

	public void setVoterEmail(String voterEmail) {
		this.voterEmail = voterEmail;
	}

	public String getVoterPassword() {
		return voterPassword;
	}

	public void setVoterPassword(String voterPassword) {
		this.voterPassword = voterPassword;
	}

	public boolean isVoterStatus() {
		return voterStatus;
	}

	public void setVoterStatus(boolean voterStatus) {
		this.voterStatus = voterStatus;
	}

	public String getVoterRole() {
		return voterRole;
	}

	public void setVoterRole(String voterRole) {
		this.voterRole = voterRole;
	}

	@Override
	public String toString() {
		return "ID : " + voterId + ", NAME : " + voterName + ", EMAIL : " + voterEmail + ", PASSWORD : " + voterPassword
				+ ", STATUS : " + voterStatus + ", ROLE : " + voterRole;
	}
}