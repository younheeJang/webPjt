package com.board1.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board1.dao.Board1DAO;
import com.board1.dto.Board1VO;

public class Board1CheckPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String url = null;
		String num = request.getParameter("num");
		String pass = request.getParameter("pass");
		
		Board1DAO dao = Board1DAO.getInstance();
		Board1VO vo = dao.selectOneBoardByNum(num);
		
		if(vo.getPass().equals(pass)) {
			url ="/board1/checkSuccess.jsp";
		}else {
			url ="/board1/board1CheckPass.jsp";
			request.setAttribute("message", "pass is not proper");
			
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
