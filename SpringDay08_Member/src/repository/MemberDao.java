package repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mapper.MemberMapper;
import vo.MemberVO;

@Component
public class MemberDao {

	@Autowired
	private SqlSessionTemplate template;

	public int insertMem(MemberVO vo) {
		MemberMapper mapper = template.getMapper(MemberMapper.class);
		return mapper.insert(vo);
	}

	public int updateMem(MemberVO vo) {
		MemberMapper mapper = template.getMapper(MemberMapper.class);
		return mapper.update(vo);
	}

	public MemberVO selectMem(String id) {
		MemberMapper mapper = template.getMapper(MemberMapper.class);
		return mapper.selectMem(id);
	}
}
