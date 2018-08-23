package com.board1.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board1.dto.Board1VO;
import com.board1.dao.Board1DAO;

public class Board1UpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String url = "/board1/board1Update.jsp";
		String num = request.getParameter("num");
		Board1DAO dao=Board1DAO.getInstance();
		dao.updateReadCount(num);
		Board1VO vo = dao.selectOneBoardByNum(num);
		request.setAttribute("board1", vo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
		
	}

}
