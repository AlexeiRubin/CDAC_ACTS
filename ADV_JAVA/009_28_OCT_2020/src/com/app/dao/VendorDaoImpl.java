package com.app.dao;

import static com.app.utils.HibernateUtils.getSessionFactory;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.app.entity.Vendor;

public class VendorDaoImpl implements VendorDao {

	@Override
	public String registerVendor(Vendor vendorEntity) {
		String messageLog = "\nVENDOR : REGISTRATION FAILED";

		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();

		try {
			session.save(vendorEntity);
			transaction.commit();
			messageLog = "\nVENDOR : REGISTRATION SUCCESSFUL";
		} catch (HibernateException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return messageLog;
	}

	@Override
	public String unsubscribeVendor(int vendorId) {
		String messageLog = "\nINVALID VENDOR ID";

		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Vendor vendorEntity = null;

		try {
			vendorEntity = session.get(Vendor.class, vendorId);
			if (vendorEntity != null) {
				session.delete(vendorEntity);
				messageLog = "\nVENDOR : UNSUBSCRIBED";
			}
			transaction.commit();
		} catch (HibernateException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return messageLog;
	}

	@Override
	public Vendor getVendorDetails(String vendorEmail, String vendorPassword) {

		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Vendor vendorEntity = null;

		String jpql = "select v from Vendor v join fetch v.vendorAccounts where v.vendorEmail = :email and v.vendorPassword = :password";

		try {
			vendorEntity = session.createQuery(jpql, Vendor.class).setParameter("email", vendorEmail)
					.setParameter("password", vendorPassword).getSingleResult();
			transaction.commit();

		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return vendorEntity;
	}
}