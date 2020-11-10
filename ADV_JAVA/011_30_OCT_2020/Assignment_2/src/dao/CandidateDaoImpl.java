package dao;

import static utils.HibernateUtils.getSessionFactory;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import pojos.Candidate;

public class CandidateDaoImpl implements ICandidateDao {

	@Override
	public List<Candidate> getCandidateList() {
		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();

		String jpql = "select c from Candidate c";
		List<Candidate> candidates = new ArrayList<>();

		try {
			candidates = session.createQuery(jpql, Candidate.class).getResultList();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return candidates;
	}

	@Override
	public String incrementVotes(int candidateId) {
		String message = "Candidates Table Updation Failed.";
		Session session = getSessionFactory().getCurrentSession();

		Transaction transaction = session.beginTransaction();
		Candidate candidate = null;

		try {
			candidate = session.get(Candidate.class, candidateId);
			if (candidate != null) {
				candidate.setVotes(candidate.getVotes() + 1);
				message = "Candidates Table Updated.";
			}
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return message;
	}

	@Override
	public List<Candidate> votesAnalysis() {
		List<Candidate> partyVotes = new ArrayList<Candidate>();
		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		String jpql = "select c from Candidate c order by c.votes desc";
		try {
			partyVotes = session.createQuery(jpql, Candidate.class).getResultList();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return partyVotes;
	}

	@Override
	public List<Candidate> maxVotesCandidates() {
		List<Candidate> topCandidates = new ArrayList<>();
		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		String jpql = "select c from Candidate c order by c.votes desc";

		try {
			topCandidates = session.createQuery(jpql, Candidate.class).setMaxResults(2).getResultList();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}

		return topCandidates;
	}

}
