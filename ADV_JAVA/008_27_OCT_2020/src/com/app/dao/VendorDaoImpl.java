package com.app.dao;

import static com.app.utils.HibernateUtils.getSessionFactory;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.app.entity.Role;
import com.app.entity.Vendor;

public class VendorDaoImpl implements VendorDao {

	@Override
	public String registerVendor(Vendor vendor) {

		Session session = getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		try {
			session.save(vendor);
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		return "New Vendor Registered with ID : " + vendor.getVendorId();
	}

	@Override
	public Vendor authenticateVendor(String vendorEmail, String vendorPassword) {
		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();

		String jpql = "select v from Vendor v where v.vendorEmail= :email and v.vendorPassword= :password";
		Vendor vendorEntity = null;

		try {
			vendorEntity = session.createQuery(jpql, Vendor.class).setParameter("email", vendorEmail)
					.setParameter("password", vendorPassword).getSingleResult();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		return vendorEntity;
	}

	@Override
	public List<Vendor> getSpecificVendors(LocalDate vendorRegistrationDate, double vendorRegistrationAmount) {
		Session session = getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();

		String jpql = "select v from Vendor v where v.vendorRegistrationDate > :registrationDate and v.vendorRegistrationAmount < :registrationAmount";
		List<Vendor> vendorEntityList = null;

		try {
			vendorEntityList = session.createQuery(jpql, Vendor.class)
					.setParameter("registrationDate", vendorRegistrationDate)
					.setParameter("registrationAmount", vendorRegistrationAmount).getResultList();
			transaction.commit();
		} catch (HibernateException e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		return vendorEntityList;
	}

	@Override
	public String discountBeforeRegDate(LocalDate vendorRegistrationDate, double vendorDiscountAmount) {
		String messageLog = "DISCOUNT NOT APPLIED";

		Session session = getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();

		String jpql = "select v from Vendor v where v.vendorRole= :role and v.vendorRegistrationDate < :registrationDate";

		try {
			session.createQuery(jpql, Vendor.class).setParameter("role", Role.VENDOR)
					.setParameter("registrationDate", vendorRegistrationDate).getResultList()
					.forEach(vendorEntity -> vendorEntity.setVendorRegistrationAmount(
							vendorEntity.getVendorRegistrationAmount() - vendorDiscountAmount));
			messageLog = "DISCOUNT APPLIED";
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		return messageLog;
	}
}