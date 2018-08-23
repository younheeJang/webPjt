package db_mybatis2;

import java.util.List;

public interface BookMapper {

	public int my_insert(BookVO b);
	public BookVO my_select_one(int bookNum);
	public List<BookVO> my_select_all();
	
}
