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
	public Vendor getVendorDetails(String vendorEmail) {
		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();

		Vendor vendorEntity = null;
		String jpql = "select v from Vendor v join fetch v.vendorAccounts where v.vendorEmail = :email";

		try {
			vendorEntity = session.createQuery(jpql, Vendor.class).setParameter("email", vendorEmail).getSingleResult();

			vendorEntity.getVendorPhoneNumbers().size();

			transaction.commit();

		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		}
		return vendorEntity;
	}
}