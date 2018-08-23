package cakeDB;

public class Main {

	public static void main(String[] args) {
		cakeDAO dao = new cakeDAO();
		cakeVO vo= new cakeVO();
	
		vo.setName("lemon");
		vo.setStock(90);
		vo.setPrice(18000);
		vo.setExDate("20190530");
		
		System.out.println(dao.insert(vo));
	
		/*
		 * for(cakeVO c :dao.select_all()) { System.out.println(c); }
		 */
		
		/*vo.setpNum(6);
		vo.setName("blueberry");
		vo.setStock(9);
		vo.setPrice(21000);
		vo.setExDate("20190611");
		System.out.println(dao.update(vo));
*/	
		//System.out.println(dao.delete(6));
		
	//	System.out.println(dao.select_one(1));
		
	}
}
