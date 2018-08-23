package test;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import repository.CakeDAO;
import vo.CakeVO;

public class Main {

	public static void main(String[] args) {

		ApplicationContext ctx = new GenericXmlApplicationContext("test/applicationContext.xml");

		//CakeVO vo = new CakeVO();
		CakeDAO dao = ctx.getBean("dao", CakeDAO.class);

		// System.out.println(dao.select_one(1));

		/*
		 * vo.setName("redbean"); vo.setStock(31); vo.setPrice(26000);
		 * vo.setExDate("20210326"); vo.setDetails("redbean cake");
		 * System.out.println(dao.insert(vo));
		 */

		/*
		 * for(CakeVO c : dao.select_all()) { System.out.println(c); }
		 */

		/*
		 * vo.setpNum(7); vo.setName("redbean"); vo.setStock(10); vo.setPrice(31000);
		 * vo.setExDate("20210326"); vo.setDetails("redbean cake");
		 * System.out.println(dao.update(vo));
		 */

		// System.out.println(dao.delete(8));

		//////////////////////////////////////////////////////////////////////

		Scanner scanner = new Scanner(System.in);
		int input;
		while (true) {
			
			System.out.println("1:입력 2:검색 3:조회 4:수정 5:삭제 6:종료");

			System.out.println("원하는 서비스 선택>>");
			input = scanner.nextInt();
			if (input == 6)
				break;
			CakeVO vo = new CakeVO();
			switch (input) {
			case 1:
				scanner.nextLine();// 에러방지
				System.out.println("상품명입력>>");
				vo.setName(scanner.nextLine());
				System.out.println("수량>>");
				vo.setStock(scanner.nextInt());
				System.out.println("가격>>");
				vo.setPrice(scanner.nextInt());
				scanner.nextLine();
				System.out.println("유통기한>>");
				vo.setExDate(scanner.nextLine());
				System.out.println("상세설명>>");
				vo.setDetails(scanner.nextLine());

				dao.insert(vo);

				System.out.println("상품 추가 완료" + vo.getpNum());
				break;

			case 2:

				System.out.println("상품번호입력>>");
				int pNum = scanner.nextInt();
				vo = dao.select_one(pNum);
				System.out.println(vo);
				System.out.println("상품검색완료");

				break;

			case 3:
				for(CakeVO c:dao.select_all()) {
					System.out.println(c);
				}
				
				break;

			case 4:
				System.out.println("수정하고 싶은 상품번호 입력>>");
				vo.setpNum(scanner.nextInt());
				scanner.nextLine();
				System.out.println("상품명입력>>");
				vo.setName(scanner.nextLine());
				System.out.println("수량>>");
				vo.setStock(scanner.nextInt());
				System.out.println("가격>>");
				vo.setPrice(scanner.nextInt());
				scanner.nextLine();
				System.out.println("유통기한>>");
				vo.setExDate(scanner.nextLine());
				System.out.println("상세설명>>");
				vo.setDetails(scanner.nextLine());

				dao.update(vo);

				System.out.println("상품수정완료");
				break;

			case 5:
				System.out.println("삭제할 상품번호 입력>>");
				pNum = scanner.nextInt();
				dao.delete(pNum);
				System.out.println("상품삭제완료");
				break;

			}
		}
		System.out.println("프로그램 종료");

		//////////////////////////////////////////////////////////////////////

	}
}
