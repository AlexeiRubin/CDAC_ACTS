package dao;

import static utils.HibernateUtils.getSessionFactory;

import org.hibernate.Session;
import org.hibernate.Transaction;

import pojos.Voter;

public class VoterDaoImpl implements IVoterDao {

	@Override
	public Voter authenticateVoter(String em, String pass) {
		String jpql = "select v from Voter v where v.email= :email and v.password= : password";
		Voter voterEntity = null;

		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();

		try {
			voterEntity = session.createQuery(jpql, Voter.class).setParameter("email", em)
					.setParameter("password", pass).getSingleResult();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return voterEntity;
	}

	@Override
	public String updateVotingStatus(Voter v) {
		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();

		try {

			session.update(v);
			v.setStatus(true);
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return null;
	}
}