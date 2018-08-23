package test;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import repository.EmpDAO;
import vo.EmpVO;

public class Main {

	public static void main(String[] args) {

		ApplicationContext ctx = new GenericXmlApplicationContext("test/applicationContext.xml");

		EmpDAO dao = ctx.getBean("dao", EmpDAO.class);

		/*
		 * EmpVO vo = new EmpVO();
		 * 
		 * vo.seteNum(12); vo.seteName("nameC"); vo.setePhone("010-2222-2222");
		 * vo.seteMail("C@naver.com"); vo.seteDepartment("secretary");
		 * vo.seteJob("employeeC"); System.out.println(dao.insert(vo));
		 */

		/*
		 * for(EmpVO vo : dao.select_all() ) {
		 * 
		 * System.out.println(vo); }
		 */

		// System.out.println(dao.select_one(11));

		/*
		 * EmpVO vo = new EmpVO(); vo.seteNum(11); vo.seteName("nameB");
		 * vo.setePhone("010-1234-1234"); vo.seteMail("C@naver.com");
		 * vo.seteDepartment("secretary"); vo.seteJob("employeeC");
		 * 
		 * System.out.println(dao.update(vo));
		 */

		// System.out.println(dao.delete(12));

		EmpVO vo = new EmpVO();
		Scanner sc = new Scanner(System.in);

		while (true) {
			int input = 0;
			System.out.println("1:input 2:search 3:view 4:update 5:delete 6:exit");

			System.out.println("plz input your service>>");
			input = sc.nextInt();
			sc.nextLine();

			if (input == 6) {
				System.out.println("exit program");
				break;
			}
			switch (input) {

			case 1:
				System.out.println("employ Number>>");
				vo.seteNum(sc.nextInt());
				sc.nextLine();
				System.out.println("employ Name>>");
				vo.seteName(sc.nextLine());
				System.out.println("employ Phone>>");
				vo.setePhone(sc.nextLine());
				System.out.println("employ email>>");
				vo.seteMail(sc.nextLine());
				System.out.println("employ Department>>");
				vo.seteDepartment(sc.nextLine());
				System.out.println("employ Job>>");
				vo.seteJob(sc.nextLine());
				System.out.println(dao.insert(vo));
				break;

			case 2:
				System.out.println("search eNum>>");
				int eNum = sc.nextInt();
				System.out.println(dao.select_one(eNum));
				break;

			case 3:
				for (EmpVO e : dao.select_all()) {
					System.out.println(e);
				}

				break;

			case 4:
				System.out.println("input eNum>>");
				vo.seteNum(sc.nextInt());
				sc.nextLine();
				System.out.println("employ Name>>");
				vo.seteName(sc.nextLine());
				System.out.println("employ Phone>>");
				vo.setePhone(sc.nextLine());
				System.out.println("employ email>>");
				vo.seteMail(sc.nextLine());
				System.out.println("employ Department>>");
				vo.seteDepartment(sc.nextLine());
				System.out.println("employ Job>>");
				vo.seteJob(sc.nextLine());
				System.out.println(dao.update(vo));

				break;

			case 5:
				System.out.println("input eNum");
				eNum = sc.nextInt();
				System.out.println(dao.delete(eNum));
				break;

			}

		}

	}

}
