package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import repository.HairDAO;
import vo.HairVO;

public class Main {

	public static void main(String[] args) {

		
		ApplicationContext ctx = new GenericXmlApplicationContext("test/applicationContext.xml");
		HairDAO dao = ctx.getBean("dao", HairDAO.class);

		HairVO vo = new HairVO();
		
		/*vo.setServiceNum(5);
		vo.setService("children cut");
		vo.setPrice(5000);
		vo.setDiscount("0%");
		vo.setServiceManager("MiYoung");
		vo.setMember("nameE");
		vo.setMemberNum(3000);
		System.out.println(dao.insert(vo));*/
		
		//System.out.println(dao.select_one(1));
		
		/*for(HairVO c : dao.select_all()) {
			System.out.println(c);
		}*/
		
		/*vo.setServiceNum(5);
		vo.setService("women cut");
		vo.setPrice(15000);
		vo.setDiscount("0%");
		vo.setServiceManager("MiYoung");
		vo.setMember("nameE");
		vo.setMemberNum(3000);
		System.out.println(dao.update(vo));*/
		
		//System.out.println(dao.delete(5));
		
	}
}
