package db_mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BookDao {
 private SqlSession session;
 public BookDao() {
  // 마이바티스 설정 파일을 읽어들여서sqlSession을 생성하기 위한 초기화 작업 수행
  // 스프링과 연동 후에는 마이바티스 설정을 스프링 컨테이너에서 하기 때문에 하단의 작업이 사라짐
  String path = "db_mybatis/mybatis-conf.xml";
  InputStream is = null;
  
  try {
   is = Resources.getResourceAsStream(path);
   SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
   session = factory.openSession(true);
  } catch (IOException e) {
   e.printStackTrace();
  }finally {
   try {is.close();} catch (Exception e) {}
   }
 
 }
 public int insert(BookVO book) {
  return session.insert("jyh.my_insert", book);
 }
 public BookVO selectOne(int bookNum) {
  return session.selectOne("jyh.my_select_one", bookNum);
 }
 public List<BookVO> selectAll() {
  return session.selectList("jyh.my_select_all");
 }
}
 