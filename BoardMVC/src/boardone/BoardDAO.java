package boardone;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
public class BoardDAO {
 private static BoardDAO instance = null;
 private BoardDAO() {
 }
 public static BoardDAO getInstance() {
  if (instance == null) {
   synchronized (BoardDAO.class) {
    instance = new BoardDAO();
   }
  }
  return instance;
 }
 // here for database connect work
 // board work append method one by one from here
 // append method put in data to real database
 public void insertArticle(BoardVO article) {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  int num = article.getNum();
  int ref = article.getRef();
  int step = article.getStep();
  int depth = article.getDepth();
  int number = 0;
  String sql = "";
  try {
   con = ConnUtil.getConnection();
   pstmt = con.prepareStatement("select max(num) from board");
   rs = pstmt.executeQuery();
   if (rs.next()) {
    // 새로운 글을 하나 추가했음
    number = rs.getInt(1) + 1;
   } else {
    number = 1;
   }
   if (num != 0) {
    // 원래 있던 글에 답변을 다는 경우
    sql = "update board set step=step+1 where ref=? and step>?";
    pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, ref);
    pstmt.setInt(2, step);
    pstmt.executeUpdate();
    step = step + 1;
    depth = depth + 1;
   } else {
    // 새글일 경우
    ref = number;
    step = 0;
    depth = 0;
   }
   // 쿼리 작성
   sql = "insert into board(num, writer, email, " + "subject, pass, regdate, ref, step, "
     + "depth, content, ip) " + "values(board_seq.nextval, ?,?,?,?,?,?,?,?,?,?)";
   pstmt = con.prepareStatement(sql);
   // 시퀀스 처리 한 num 뺴고 나머지 처리해 주어야 함
   pstmt.setString(1, article.getWriter());
   pstmt.setString(2, article.getEmail());
   pstmt.setString(3, article.getSubject());
   pstmt.setString(4, article.getPass());
   pstmt.setTimestamp(5, article.getRegdate());
   pstmt.setInt(6, ref);
   pstmt.setInt(7, step);
   pstmt.setInt(8, depth);
   pstmt.setString(9, article.getContent());
   pstmt.setString(10, article.getIp());
   pstmt.executeUpdate();
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
 }
 // writeProc.jsp페이지에서 작성글의 디비에 추가하고 list.jsp로 리다이렉트했고
 // 수행결과를 보여주려면 list.jsp페이지를 작성해야 함 리스트를 가져올 메소드작성
 // 첫번째 전체 글의 개수를 가져올 메소드를 추가하여 작성
 
 /*return how many contents exist searched.
  * 
  * */
 public int getArticleCount() {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  int x = 0; // 글의 개수
  try {
   con = ConnUtil.getConnection();
   
   pstmt = con.prepareStatement("select count(*) from board");
   rs = pstmt.executeQuery();
   if (rs.next()) {
    x = rs.getInt(1);
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
  return x;
 }
 
 public int getArticleCount(String what, String content) {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  int x = 0; // 글의 개수
  try {
   con = ConnUtil.getConnection();
   
   
   pstmt = con.prepareStatement(
      "select count(*) from board where "
        +what+" like '%"+content+"%'");
   rs = pstmt.executeQuery();
   if (rs.next()) {
    x = rs.getInt(1);
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
  return x;
 }
 // board 체이블에서 가져올 메소드를 추가
 // list를 이용함
 public List<BoardVO> getArticles(int start, int end) {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  List<BoardVO> articleList = null;
  try {
   con = ConnUtil.getConnection();
    String sql ="select * from ( select rownum rnum, num, writer, "
     + "email, subject , pass, regdate, readcount, ref, step, depth, "
     + "content, ip from (select * from board "
     +  "order by ref desc, "
     + "step asc)) where rnum >= ? and rnum <=?";                   
    
   pstmt = con.prepareStatement(sql);
   pstmt.setInt(1, start);
   pstmt.setInt(2, end);
   
   rs = pstmt.executeQuery();
   if (rs.next()) {
    articleList = new ArrayList<BoardVO>(end-start+1);
    /*
     * num, writer, email, " + "subject, pass, regdate, ref, step, " + "depth,
     * content, ip
     */
    do {
     BoardVO article = new BoardVO();
     article.setNum(rs.getInt("num"));
     article.setWriter(rs.getString("writer"));
     article.setEmail(rs.getString("email"));
     article.setSubject(rs.getString("subject"));
     article.setPass(rs.getString("pass"));
     article.setRegdate(rs.getTimestamp("regdate"));
     article.setReadcount(rs.getInt("readcount"));
     article.setRef(rs.getInt("ref"));
     article.setStep(rs.getInt("step"));
     article.setDepth(rs.getInt("depth"));
     article.setContent(rs.getString("content"));
     article.setIp(rs.getString("ip"));
     articleList.add(article);
    } while (rs.next());
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
  return articleList;
 }// end getArticles()
 
 
 public List<BoardVO> getArticles(int start, int end, String what, String content) {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  List<BoardVO> articleList = null;
  try {
   con = ConnUtil.getConnection();
   String sql="select * from ( select rownum rnum, num, writer, "
     + "email, subject, pass, regdate, readcount, ref, step, depth, "
     + "content, ip from (select * from board "
     + "where "+what+" like '%"+content+"%' "
     + "order by ref desc, "
     + "step asc)) where rnum >= ? and rnum <= ?";
   
   pstmt = con.prepareStatement(sql);
   pstmt.setInt(1, start);
   pstmt.setInt(2, end);
   
   rs = pstmt.executeQuery();
   if (rs.next()) {
    articleList = new ArrayList<BoardVO>(end-start+1);
    /*
     * num, writer, email, " + "subject, pass, regdate, ref, step, " + "depth,
     * content, ip
     */
    do {
     BoardVO article = new BoardVO();
     article.setNum(rs.getInt("num"));
     article.setWriter(rs.getString("writer"));
     article.setEmail(rs.getString("email"));
     article.setSubject(rs.getString("subject"));
     article.setPass(rs.getString("pass"));
     article.setRegdate(rs.getTimestamp("regdate"));
     article.setReadcount(rs.getInt("readcount"));
     article.setRef(rs.getInt("ref"));
     article.setStep(rs.getInt("step"));
     article.setDepth(rs.getInt("depth"));
     article.setContent(rs.getString("content"));
     article.setIp(rs.getString("ip"));
     articleList.add(article);
    } while (rs.next());
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
  return articleList;
 }// end getArticles()
 
 // get writing's num as parameter and get details for one writing from database
 // implement method that get information for one writing from database
 public BoardVO getArticle(int num) {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  BoardVO article = null;
  try {
   con = ConnUtil.getConnection();
   pstmt = con.prepareStatement("update board set readcount=readcount+1 where num=?");
   pstmt.setInt(1, num);
   pstmt.executeUpdate();
   pstmt = con.prepareStatement("select * from board where num=?");
   pstmt.setInt(1, num);
   rs = pstmt.executeQuery();
   if (rs.next()) {
    article = new BoardVO();
    article.setNum(rs.getInt("num"));
    article.setWriter(rs.getString("writer"));
    article.setEmail(rs.getString("email"));
    article.setSubject(rs.getString("subject"));
    article.setPass(rs.getString("pass"));
    article.setRegdate(rs.getTimestamp("regdate"));
    article.setReadcount(rs.getInt("readcount"));
    article.setRef(rs.getInt("ref"));
    article.setStep(rs.getInt("step"));
    article.setDepth(rs.getInt("depth"));
    article.setContent(rs.getString("content"));
    article.setIp(rs.getString("ip"));
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
  return article;
 }
 // when update message, unlike view list, don't need to increase readcount
 // so, except increasing readcount , just get message as parameter num
 public BoardVO updateGetArticle(int num) {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  BoardVO article = null;
  try {
   con = ConnUtil.getConnection();
   pstmt = con.prepareStatement("select * from board where num=?");
   pstmt.setInt(1, num);
   rs = pstmt.executeQuery();
   if (rs.next()) {
    article = new BoardVO();
    article.setNum(rs.getInt("num"));
    article.setWriter(rs.getString("writer"));
    article.setEmail(rs.getString("email"));
    article.setSubject(rs.getString("subject"));
    article.setPass(rs.getString("pass"));
    article.setRegdate(rs.getTimestamp("regdate"));
    article.setReadcount(rs.getInt("readcount"));
    article.setRef(rs.getInt("ref"));
    article.setStep(rs.getInt("step"));
    article.setDepth(rs.getInt("depth"));
    article.setContent(rs.getString("content"));
    article.setIp(rs.getString("ip"));
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
  return article;
 }// end updateGetArticle
 // click update btn,
 // message should be updated as writer written
 public int updateArticle(BoardVO article) {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  String dbpasswd = "";
  String sql = "";
  int result = -1; // before update
  // value result is 1, update succed, if 0 update failed
  try {
   con = ConnUtil.getConnection();
   pstmt = con.prepareStatement("select pass from board where num=?");
   // search pass when writing
   pstmt.setInt(1, article.getNum());
   rs = pstmt.executeQuery();
   if (rs.next()) {
    // get pass when saved database, and compare with whether same or not
    dbpasswd = rs.getString("pass");
    if (dbpasswd.equals(article.getPass())) {
     // in case pw same
     // get updated in real database
     sql = "update board set writer=?, email=?, subject=?, content=? where num=?";
     pstmt = con.prepareStatement(sql);
     pstmt.setString(1, article.getWriter());
     pstmt.setString(2, article.getEmail());
     pstmt.setString(3, article.getSubject());
     pstmt.setString(4, article.getContent());
     pstmt.setInt(5, article.getNum());
     pstmt.executeUpdate();
     result = 1;
    } else {
     result = 0;
     // update failed
    }
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
  return result;
 }
 // for delete process input pass , compare with database's pass if same delete
 // if not get user false
 // compare database's pass, implement method could delete process run at real
 // database
 public int deleteArticle(int num, String pass) {
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  String dbpasswd = "";
  int result = -1;
  try {
    //입력받은 비밀번호와 실제 데이터베이스에 저장된 비밀번호 비교
   con = ConnUtil.getConnection();
   pstmt = con.prepareStatement("select pass from board where num=?");
   pstmt.setInt(1, num);
   rs = pstmt.executeQuery();
   if (rs.next()) {
    //비밀번호가 일치하면 삭제 처리
    dbpasswd = rs.getString("pass");
    if (dbpasswd.equals(pass)) {
     pstmt = con.prepareStatement("delete from board where num=?");
     pstmt.setInt(1, num);
     pstmt.executeUpdate();
     
     //삭제 성공
     result= 1;
    }else {
     //비번 틀림
     result=0;
    }
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   if (rs != null)
    try {
     rs.close();
    } catch (SQLException ss) {
    }
   if (pstmt != null)
    try {
     pstmt.close();
    } catch (SQLException ss) {
    }
   if (con != null)
    try {
     con.close();
    } catch (SQLException ss) {
    }
  }
  return result;
 }
 
 
}
 