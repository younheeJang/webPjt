package logon;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;
public class LogonDBBean {
 private static LogonDBBean instance = new LogonDBBean();
 public static LogonDBBean getInstance() {
  return instance;
 }
 private LogonDBBean() {
 }
 private Connection getConnetcion() throws Exception {
  InitialContext ctx = new InitialContext();
  DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mydb");
  return ds.getConnection();
 }
 public int userCheck(String id, String passwd) throws Exception{
  
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  
  String dbpasswd="";
  
  int x = -1 ; // id doesn's exist
  
  try {
   con = getConnetcion();
   pstmt = con.prepareStatement(
     "select passwd from tempmember where id=?");
   
   pstmt.setString(1, id);
   rs = pstmt.executeQuery();
   if(rs.next()) {
    dbpasswd = rs.getString("passwd");
    if(dbpasswd.equals(passwd)) {
     x=1;//success to same pass
    }else {
     x=0;
     //passwd error
    } 
   }else {
    x=-1; //id doesn's exists
    
   }
  }catch(Exception ee) {
   ee.printStackTrace();
  }finally {
   if(rs != null)try {rs.close();}catch(SQLException s) {}
   if(pstmt != null)try {pstmt.close();}catch(SQLException s) {}
   if(con != null)try {con.close();}catch(SQLException s) {}
   
  }
 return x;
 }
}
 