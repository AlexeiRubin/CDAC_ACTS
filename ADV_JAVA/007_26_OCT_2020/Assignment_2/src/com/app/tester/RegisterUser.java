package com.app.tester;

import static com.app.utils.HibernateUtils.getSessionFactory;

import java.text.SimpleDateFormat;
import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.app.dao.UserDaoImpl;
import com.app.entity.Role;
import com.app.entity.User;

public class RegisterUser {

	public static void main(String[] args) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try (SessionFactory sessionFactory = getSessionFactory(); Scanner in = new Scanner(System.in)) {
			System.out.println(
					"Enter the Name, Email, Password, Confirm Password, Role, Registration Amount, Registration Date");
			User userEntry = new User(in.next(), in.next(), in.next(), in.next(), Role.valueOf(in.next().toUpperCase()),
					in.nextDouble(), sdf.parse(in.next()));

			UserDaoImpl userDao = new UserDaoImpl();
			System.out.println("Registration Status : " + userDao.registerUser(userEntry));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}