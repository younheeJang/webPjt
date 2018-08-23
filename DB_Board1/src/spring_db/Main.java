package spring_db;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {

	public static void main(String[] args) {

		ApplicationContext ctx = new GenericXmlApplicationContext
				("spring_db/applicationContext.xml");
		Board1DAO dao = ctx.getBean("dao", Board1DAO.class);
		/*Board1VO vo = new Board1VO();
		vo.setNum(12);
		vo.setPass("5656");
		vo.setName("hong gil dong");
		vo.setEmail("hong@gmail.com");
		vo.setTitle("title is what");
		vo.setContent("hong@gmail.comhong@gmail.com");
		
		System.out.println(dao.update(vo));*/
		
		for(Board1VO vo: dao.selectAll()) {
			System.out.println(vo);
		}
		
		//System.out.println(dao.selectOne(5));
		
		/*Board1VO vo = new Board1VO();
		vo.setNum(12);
		System.out.println(dao.delete(vo));*/
	}
}
