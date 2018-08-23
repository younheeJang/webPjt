package jdbc;
import java.sql.*;
import java.util.*;
import jdbc.tempMemberVO;
public class tempMemberDAO {

	private final String JDBC_DRIVER="oracle.jdbc.driver.OracleDriver";
	private final String JDBC_URL="jdbc:oracle:thin:@localhost:1521:orcl";
	private final String USER="scott";
	private final String PASS="tiger";
	
	public tempMemberDAO() {
	
		try {
			Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			System.out.println("Error:JDBC DRIVER LOADING UNSUCCESSFUL");
		}
	}
	public Vector<tempMemberVO> getMemberList(){
		Connection con=null;
		Statement stmt=null;
		ResultSet rs= null;
		
		Vector<tempMemberVO> vlist= new Vector<tempMemberVO>();
		try {
			con = DriverManager.getConnection(JDBC_URL, USER, PASS);
			String strQuery="selelct * from tempmember";
			stmt=con.createStatement();
			rs=stmt.executeQuery(strQuery);
			while(rs.next()) {
				tempMemberVO vo = new tempMemberVO();
				vo.setId(rs.getString("id"));
				vo.setPasswd(rs.getString("passwd"));
				vo.setName(rs.getString("name"));
				vo.setMem_num1(rs.getString("mem_num1"));
				vo.setMem_num2(rs.getString("mem_num2"));
				vo.setEmail(rs.getString("e_mail"));
				vo.setPhone(rs.getString("phone"));
				vo.setZipcode(rs.getString("zipcode"));
				vo.setAddress(rs.getString("address"));
				vo.setJob(rs.getString("job"));
				vlist.add(vo);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}catch (Exception ee) {
			ee.printStackTrace();
		}finally{
			if(rs != null) { 
				try {
					rs.close();
				} catch (SQLException se) {}
			}
			if(stmt != null) 	{
				try {
					stmt.close();
				} catch (SQLException se) {}
			}
			if(con != null) 	{
				try {
					con.close();
				} catch (SQLException se) {}
				
			}
		}
	return vlist;
	}
}
