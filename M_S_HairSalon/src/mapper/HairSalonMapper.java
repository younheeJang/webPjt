package mapper;

import java.util.List;

import vo.HairVO;

public interface HairSalonMapper {

	public int mapper_insert(HairVO vo);
	public HairVO mapper_select_one(int serviceNum);
	public List<HairVO> mapper_select_all();
	public int mapper_update(HairVO vo);
	public int mapper_delete(int serviceNum);
}
