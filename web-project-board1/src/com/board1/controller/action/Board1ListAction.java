package com.board1.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board1.dto.Board1VO;
import com.board1.dao.Board1DAO;

public class Board1ListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/board1/board1List.jsp";
		Board1DAO dao = Board1DAO.getInstance();
		List<Board1VO> board1List = dao.selectAllBoards();
		request.setAttribute("board1List", board1List);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
