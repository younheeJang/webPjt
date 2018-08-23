package admin_mapper;

import java.util.List;

import vo.MemberVO;

public interface Admin_member_mapper {

	public int admin_mapper_insertMem(MemberVO vo);
	public int admin_mapper_updateMem(MemberVO vo);
	public MemberVO admin_mapper_selectMem(String id);
	public List<MemberVO> admin_mapper_selectAllMem();
	public int admin_mapper_delete(String id);
	
	
}
