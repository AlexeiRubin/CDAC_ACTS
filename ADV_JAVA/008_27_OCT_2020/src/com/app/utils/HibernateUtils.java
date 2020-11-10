package com.app.utils;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtils {
	private static SessionFactory sessionFactory;
	static {
		System.out.println("In Static Initializer Block");
		try {
			StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
			sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
			System.out.println("Session Factory Created");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}