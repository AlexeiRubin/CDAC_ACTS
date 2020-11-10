package com.app.dao;

import static com.app.utils.HibernateUtils.getSessionFactory;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.app.entity.User;

public class UserDaoImpl implements UserDao {

	@Override
	public String registerUser(User user) {
		Session hibernateSession = getSessionFactory().openSession();
		Transaction transaction = hibernateSession.beginTransaction();

		try {
			hibernateSession.save(user);
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		} finally {
			if (hibernateSession != null)
				hibernateSession.close();
		}
		return "New User Registered with ID : " + user.getUserId();
	}
}