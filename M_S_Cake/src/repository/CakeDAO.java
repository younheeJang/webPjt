package repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mapper.CakeMapper;
import vo.CakeVO;

public class CakeDAO {

	private SqlSessionTemplate template;

	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}

	public int insert(CakeVO vo) {
		CakeMapper mapper  = template.getMapper(CakeMapper.class);
		return mapper.mapper_insert(vo);
	}

	public CakeVO select_one(int pNum) {
		CakeMapper mapper  = template.getMapper(CakeMapper.class);
		return mapper.mapper_select_one(pNum);
	}

	public List<CakeVO> select_all() {
		CakeMapper mapper  = template.getMapper(CakeMapper.class);
		return mapper.mapper_select_all();
	}

	public int update(CakeVO vo) {
		CakeMapper mapper  = template.getMapper(CakeMapper.class);
		return mapper.mapper_update(vo);
	}

	public int delete(int pNum) {
		CakeMapper mapper  = template.getMapper(CakeMapper.class);
		return mapper.mapper_delete(pNum);
	}

}
