package dao;

import pojos.Voter;

public interface IVoterDao {
	Voter authenticateVoter(String em,String pass);
    
	String updateVotingStatus(Voter v);
}