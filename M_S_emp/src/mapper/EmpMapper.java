package mapper;

import java.util.List;

import vo.EmpVO;

public interface EmpMapper {

	public int mapper_insert(EmpVO vo);
	public EmpVO mapper_select_one(int eNum);
	public List<EmpVO> mapper_select_all();
	public int mapper_update(EmpVO vo);
	public int mapper_delete(int eNum);
}
