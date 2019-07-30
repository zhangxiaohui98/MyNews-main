package com.zhang.mynews.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartSystemListener implements ServletContextListener {

	//在服务器启动时，创建application对象时需要执行的方法
	public void contextInitialized(ServletContextEvent sce) {
		//将项目上下文路径（request.getContextPath）放入application域中
		ServletContext servletContext = sce.getServletContext();
		servletContext.setAttribute("APP_PATH", servletContext.getContextPath());
	}

	public void contextDestroyed(ServletContextEvent sce) {

	}

}
