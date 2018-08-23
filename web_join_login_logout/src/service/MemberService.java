package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import repository.MemberDAO;
import vo.MemberVO;

@Component
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	public boolean join(MemberVO member) {
		if(member.getMemberId().equals("")||
				member.getMemberId()==null||
				member.getMemberPw().equals("")||
				member.getMemberPw()==null||
				member.getPhone().equals("")||
				member.getPhone()==null) {
			return false;
		}else {
			dao.insertMem(member);
			return true;
		}
	}
	
	public boolean loginCheck(String id, String pw) {
	
		MemberVO vo = dao.selectMem(id);
		
		if(vo==null||!vo.getMemberPw().equals(pw)) {
			return false;
		}else {
			return true;
		}
		
	}
	
	public boolean logoutCheck(String id, String pw) {
		MemberVO vo = dao.selectMem(id);
		if(!vo.getMemberPw().equals(pw)) {
			return false;
		}else {
			return true;
		}
	}




}
