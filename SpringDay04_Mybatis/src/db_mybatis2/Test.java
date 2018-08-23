package db_mybatis2;

public class Test {

 public static void main(String[] args) {
	
	 BookDao dao = new BookDao();
	// BookVO vo = new BookVO();
	/* for(int i = 0; i <5; i++) {
		vo.setTitle("javajava");
		vo.setWriter("자바");
		vo.setPrice(50000);
		System.out.println(dao.insert(vo));
	}*/
/*	 for(BookVO book:dao.selectAll()) {
		 System.out.println(book);
	 }*/
	 System.out.println(dao.selectOne(1));
}
	
}
