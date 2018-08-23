package repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mapper.BookMapper;
import vo.BookVO;



public class BookDao {

	private SqlSessionTemplate template;
	
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public int insert(BookVO book) {
		BookMapper mapper = template.getMapper(BookMapper.class);
		return mapper.my_insert(book);
	}
	
	public BookVO selectOne(int bookNum) {
		BookMapper mapper = template.getMapper(BookMapper.class);
		return mapper.my_select_one(bookNum);
	}

	public List<BookVO> selectAll() {
		BookMapper mapper = template.getMapper(BookMapper.class);
		return mapper.my_select_all();
	}
}
