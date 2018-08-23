package mapper;

import java.util.List;

import vo.BookVO;

public interface BookMapper {

	public int my_insert(BookVO b);
	public BookVO my_select_one(int bookNum);
	public List<BookVO> my_select_all();
	
}
