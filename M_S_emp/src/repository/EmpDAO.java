package repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mapper.EmpMapper;
import vo.EmpVO;

public class EmpDAO {

	private SqlSessionTemplate template;

	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}

	public int insert(EmpVO vo) {
		EmpMapper mapper = template.getMapper(EmpMapper.class);
		return mapper.mapper_insert(vo);
	}

	public EmpVO select_one(int eNum) {
		EmpMapper mapper =template.getMapper(EmpMapper.class);
		return mapper.mapper_select_one(eNum);
	}

	public List<EmpVO> select_all(){
		EmpMapper mapper =template.getMapper(EmpMapper.class);
		return mapper.mapper_select_all();
	}

	public int update(EmpVO vo) {
		EmpMapper mapper =template.getMapper(EmpMapper.class);
		return mapper.mapper_update(vo);
	}

	public int delete(int eNum) {
		EmpMapper mapper =template.getMapper(EmpMapper.class);
		return mapper.mapper_delete(eNum);
	}
}
