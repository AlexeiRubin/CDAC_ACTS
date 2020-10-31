package com.app.entity;

public class Candidate {

	private int candidateId;
	private String candidateName, candidatePoliticalParty;
	private int candidateVotes;

	public Candidate() {
		this.candidateId = 0;
		this.candidateName = null;
		this.candidatePoliticalParty = null;
		this.candidateVotes = 0;
	}

	public Candidate(int candidateId, String candidateName, String candidatePoliticalParty, int candidateVotes) {
		this.candidateId = candidateId;
		this.candidateName = candidateName;
		this.candidatePoliticalParty = candidatePoliticalParty;
		this.candidateVotes = candidateVotes;
	}

	public Candidate(String candidateName, String candidatePoliticalParty, int candidateId) {
		this.candidateName = candidateName;
		this.candidatePoliticalParty = candidatePoliticalParty;
		this.candidateId = candidateId;
	}

	public Candidate(String candidateName, int candidateVotes) {
		this.candidateName = candidateName;
		this.candidateVotes = candidateVotes;
	}

	public Candidate(String candidateName, String candidatePoliticalParty) {
		this.candidateName = candidateName;
		this.candidatePoliticalParty = candidatePoliticalParty;
	}

	public int getCandidateId() {
		return candidateId;
	}

	public void setCandidateId(int candidateId) {
		this.candidateId = candidateId;
	}

	public String getCandidateName() {
		return candidateName;
	}

	public void setCandidateName(String candidateName) {
		this.candidateName = candidateName;
	}

	public String getCandidatePoliticalParty() {
		return candidatePoliticalParty;
	}

	public void setCandidatePoliticalParty(String candidatePoliticalParty) {
		this.candidatePoliticalParty = candidatePoliticalParty;
	}

	public int getCandidateVotes() {
		return candidateVotes;
	}

	public void setCandidateVotes(int candidateVotes) {
		this.candidateVotes = candidateVotes;
	}

	@Override
	public String toString() {
		return "ID : " + candidateId + ", NAME : " + candidateName + ", POLITICAL PARTY : " + candidatePoliticalParty
				+ ", VOTES : " + candidateVotes;
	}

}