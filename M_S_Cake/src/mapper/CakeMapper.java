package mapper;

import java.util.List;

import vo.CakeVO;

public interface CakeMapper {

	
	public int mapper_insert(CakeVO vo);
	public CakeVO mapper_select_one(int pNum);
	public List<CakeVO> mapper_select_all();
	public int mapper_update(CakeVO vo);
	public int mapper_delete(int pNum);
	
}
