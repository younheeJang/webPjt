package test;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import repository.BookDao;
import vo.BookVO;

public class Test {
	public static void main(String[] args) {

		ApplicationContext ctx = new GenericXmlApplicationContext("test/applicationContext.xml");
		BookDao dao = ctx.getBean(BookDao.class);

		Scanner sc = new Scanner(System.in);
		int input;
		while (true) {

			System.out.println("1:추가 2:검색 3:전체 -1:종료");
			System.out.println("입력>>");
			input = sc.nextInt();
			if (input == -1)
				break;
			BookVO b = new BookVO();

			switch (input) {
			case 1:
				sc.nextLine();
				System.out.println("title:");
				b.setTitle(sc.nextLine());
				System.out.println("writer:");
				b.setWriter(sc.nextLine());
				System.out.println("price");
				b.setPrice(sc.nextInt());
				dao.insert(b);
				System.out.println("책 추가 완료 추가된 책 번호 :"+b.getBookNum());
				break;

			case 2:
				System.out.println("검색할 책번호");
				int bookNum = sc.nextInt();
				b = dao.selectOne(bookNum);
				System.out.println(b);
				System.out.println("책검색 완료");
				break;

			case 3:
				for (BookVO book : dao.selectAll()) {
					System.out.println(book);
				}
				System.out.println("책 목록 끝");
				break;

			}
		}
		System.out.println("end");
	}
}
