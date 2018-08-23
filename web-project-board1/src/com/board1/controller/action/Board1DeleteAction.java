package com.board1.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board1.dao.Board1DAO;;

public class Board1DeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		Board1DAO dao = Board1DAO.getInstance();
		dao.deleteBoard1(num);
		new Board1ListAction().execute(request, response);

	}

}
