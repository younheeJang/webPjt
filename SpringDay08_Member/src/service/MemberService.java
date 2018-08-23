package service;

import repository.MemberDao;
import vo.MemberVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberService {

	@Autowired
	private MemberDao dao;

	public boolean join(MemberVO member) {
		if (member.getMemberId().equals("") || member.getMemberId() == null || member.getMemberPw().equals("")
				|| member.getMemberPw() == null || member.getPhone().equals("") || member.getPhone() == null) {
			return false;
		} else {
			dao.insertMem(member);
			return true;
		}

	}
}
