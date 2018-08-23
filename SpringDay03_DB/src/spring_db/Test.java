package spring_db;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class Test {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext(
				"spring_db/applicationContext.xml");

		BookDao dao = ctx.getBean("dao", BookDao.class);
		
		/*BookVO b= new BookVO();
		b.setBookNum(300);
		b.setTitle("자바자바");
		b.setWriter("이길동");
		b.setPrice(30000);
		
		System.out.println(dao.insert(b));*/
		
		/*for(BookVO vo:dao.selectAll()) {
			System.out.println(vo);
		}*/
	
		System.out.println(dao.selectOne(100));
	}

}
