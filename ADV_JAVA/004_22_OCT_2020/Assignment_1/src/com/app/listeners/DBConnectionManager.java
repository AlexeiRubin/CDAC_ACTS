package com.app.listeners;

import static com.app.utils.DBUtils.cleanUp;
import static com.app.utils.DBUtils.createSingletonConnection;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class DBConnectionManager implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent sce) {
		try {
			cleanUp();
		} catch (Exception e) {
			System.out.println("Error in contextDestroyed : " + e);
		}
	}

	public void contextInitialized(ServletContextEvent sce) {
		ServletContext context = sce.getServletContext();
		try {
			createSingletonConnection(context.getInitParameter("driver_class"), context.getInitParameter("db_url"),
					context.getInitParameter("db_username"), context.getInitParameter("db_password"));
		} catch (Exception e) {
			System.out.println("Error in contextInitialized : " + e);
		}
	}
}