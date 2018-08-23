package mapper;

import vo.MemberVO;

public interface MemberMapper {

	public int mapper_insertMem(MemberVO vo);
	public int mapper_updateMem(MemberVO vo);
	public MemberVO mapper_selectMem(String id);
}
