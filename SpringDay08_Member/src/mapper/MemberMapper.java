package mapper;
import vo.MemberVO;
public interface MemberMapper {
public int insert(MemberVO vo);
public int update(MemberVO vo);
public MemberVO selectMem(String id);
}
