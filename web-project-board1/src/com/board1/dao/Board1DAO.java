package com.board1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBManager;

import com.board1.dto.Board1VO;

public class Board1DAO {

	private Board1DAO() {
	}

	private static Board1DAO instance = new Board1DAO();

	public static Board1DAO getInstance() {
		return instance;
	}

	public List<Board1VO> selectAllBoards() {
		String sql = "select * from board1 order by num desc";

		List<Board1VO> list = new ArrayList<Board1VO>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		 try {
			 con = DBManager.getConnection();
			 stmt = con.createStatement();
			 rs = stmt.executeQuery(sql);
			 while(rs.next()) {
				 Board1VO vo = new Board1VO();
				 
				 vo.setNum(rs.getInt("num"));
				 vo.setName(rs.getString("name"));
				 vo.setEmail(rs.getString("email"));
				 vo.setPass(rs.getString("pass"));
				 vo.setTitle(rs.getString("title"));
				 vo.setContent(rs.getString("content"));
				 vo.setReadcount(rs.getInt("readcount"));
				 vo.setWritedate(rs.getTimestamp("writedate"));
				 list.add(vo);
			 }
		 }catch(SQLException e) {e.printStackTrace();
		 }finally {DBManager.close(con, stmt, rs);
		 }
		 return list;
	}
	
	public void insertBoard1(Board1VO vo) {
		String sql = "insert into board1(num, name, email, pass, title, content) values(board1_seq.nextval, ?, ?, ?, ?, ?)";
	Connection con = null;
	PreparedStatement pstmt = null;
	try {
		con = DBManager.getConnection();
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getEmail());
		pstmt.setString(3, vo.getPass());
		pstmt.setString(4, vo.getTitle());
		pstmt.setString(5, vo.getContent());
		
		pstmt.executeUpdate();
	}catch(SQLException e) {e.printStackTrace();
	}finally {DBManager.close(con, pstmt);}
	}

	public void updateReadCount(String num) {
		String sql = "update board1 set readcount=readcount+1 where num=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(SQLException e) {e.printStackTrace();
		}finally {DBManager.close(con, pstmt);}
	}
	
	public Board1VO selectOneBoardByNum(String num) {
		String sql = "select * from board1 where num=?";
		
		Board1VO vo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			rs= pstmt.executeQuery();
			if(rs.next()) {
				vo = new Board1VO();
				
				vo.setNum(rs.getInt("num"));
				vo.setName(rs.getString("name"));
				vo.setPass(rs.getString("pass"));
				vo.setEmail(rs.getString("email"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setWritedate(rs.getTimestamp("writedate"));
				vo.setReadcount(rs.getInt("readcount"));
			}
		}catch(Exception e) {e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	return vo;
	}

	public void updateBoard1(Board1VO vo) {
		String sql = "update board1 set name=?, email=?, pass=?, title=?, content=? where num=?";
	Connection con = null;
	PreparedStatement pstmt = null;
	try {
		con = DBManager.getConnection();
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getEmail());
		pstmt.setString(3, vo.getPass());
		pstmt.setString(4, vo.getTitle());
		pstmt.setString(5, vo.getContent());
		pstmt.setInt(6, vo.getNum());
	pstmt.executeUpdate();
	}catch(SQLException e) {e.printStackTrace();
	}finally {DBManager.close(con, pstmt);}
	}
	
	public Board1VO checkPassWord(String pass, String num) {
		String sql="select * from board1 where pass=? and num=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Board1VO vo = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pass);
			pstmt.setString(2, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new Board1VO();
				vo.setNum(rs.getInt("num"));
				vo.setName(rs.getString("name"));
				vo.setEmail(rs.getString("email"));
				vo.setPass(rs.getString("pass"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));				
				vo.setReadcount(rs.getInt("readcount"));
				vo.setWritedate(rs.getTimestamp("writedate"));
			}
		}catch(SQLException e) {e.printStackTrace();
		}
	return vo;
	}
	
	public void deleteBoard1(String num) {
		String sql="delete board1 where num=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(SQLException e) {e.printStackTrace();}
	}
}
