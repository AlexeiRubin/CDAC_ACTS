package com.app.listeners;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class UserManager implements ServletContextListener, HttpSessionListener {

	public void sessionCreated(HttpSessionEvent se) {
		ServletContext context = se.getSession().getServletContext();

		synchronized (context) {
			int counter = (Integer) context.getAttribute("userCount");
			context.setAttribute("userCount", ++counter);
		}
	}

	public void sessionDestroyed(HttpSessionEvent se) {
		ServletContext context = se.getSession().getServletContext();

		synchronized (context) {
			int counter = (Integer) context.getAttribute("userCount");
			context.setAttribute("userCount", --counter);
		}
	}

	public void contextDestroyed(ServletContextEvent sce) {
		sce.getServletContext().setAttribute("userCount", 0);
	}

	public void contextInitialized(ServletContextEvent sce) {
		sce.getServletContext().setAttribute("userCount", 0);
	}
}