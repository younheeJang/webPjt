package com.board1.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board1.dao.Board1DAO;
import com.board1.dto.Board1VO;

public class Board1WriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Board1VO vo = new Board1VO();
		
		vo.setName(request.getParameter("name"));
		vo.setPass(request.getParameter("pass"));
		vo.setEmail(request.getParameter("email"));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		
		Board1DAO dao = Board1DAO.getInstance();
		dao.insertBoard1(vo);
		
		new Board1ListAction().execute(request, response);

	}

}
