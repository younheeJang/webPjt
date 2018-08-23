package repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mapper.HairSalonMapper;
import vo.HairVO;

public class HairDAO {

	private SqlSessionTemplate template;

	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}

	public int insert(HairVO vo) {
		HairSalonMapper mapper = template.getMapper(HairSalonMapper.class);
		return mapper.mapper_insert(vo);
	}

	public HairVO select_one(int serviceNum) {
		HairSalonMapper mapper = template.getMapper(HairSalonMapper.class);
		return mapper.mapper_select_one(serviceNum);
	}

	public List<HairVO> select_all(){
		HairSalonMapper mapper = template.getMapper(HairSalonMapper.class);
		return mapper.mapper_select_all();
	}

	public int update(HairVO vo) {
		HairSalonMapper mapper = template.getMapper(HairSalonMapper.class);
		return mapper.mapper_update(vo);
	}

	public int delete(int serviceNum) {
		HairSalonMapper mapper = template.getMapper(HairSalonMapper.class);
		return mapper.mapper_delete(serviceNum);
	}
}
