package repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import mapper.MemberMapper;
import vo.MemberVO;

@Component
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate template;
	

	public int insertMem(MemberVO vo) {
		MemberMapper mapper = template.getMapper(MemberMapper.class);
		return mapper.mapper_insertMem(vo);
	}

	public int updateMem(MemberVO vo) {
		MemberMapper mapper = template.getMapper(MemberMapper.class);
		return mapper.mapper_updateMem(vo);
	}

	public MemberVO selectMem(String id) {
		MemberMapper mapper = template.getMapper(MemberMapper.class);
		return mapper.mapper_selectMem(id);
	}
}
