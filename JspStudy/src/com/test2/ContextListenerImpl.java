package com.test2;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
//@WebListener
public class ContextListenerImpl implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		System.out.println("remove the web appli");

	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		System.out.println("init the web appli");

	}

}
