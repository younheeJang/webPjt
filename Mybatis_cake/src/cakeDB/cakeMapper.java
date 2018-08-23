package cakeDB;

import java.util.List;

public interface cakeMapper {

	public int mapper_insert(cakeVO c);
	public cakeVO mapper_select_one(int pNum);
	public List<cakeVO> mapper_select_all();
	public int mapper_delete(int pNum);
	public int mapper_update(cakeVO c);
	
}
