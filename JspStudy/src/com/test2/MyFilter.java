package com.test2;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
@WebFilter(urlPatterns= {"/*"})
public class MyFilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("destroy Filter");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("request filter some works done");
		request.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
		System.out.println("response process requested");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("init filter");

	}

}
