package com.board1.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board1.controller.action.Action;

@WebServlet("/Board1Servlet")
public class Board1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Board1Servlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String command = request.getParameter("command");
    	System.out.println("confirm request from Board1Servlet:"+command);
    	ActionFactory af = ActionFactory.getInstance();
    	Action action = af.getAction(command);
    	if(action != null) {
    		action.execute(request, response);
    	}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
