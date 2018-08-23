package spring_db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class Board1DAO {

	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int insert(Board1VO vo) {
		String sql = "insert into board1" + "(num, pass, name, email, title, content)"
				+ "values(board1_seq.nextval,?,?,?,?,?)";
		return jdbcTemplate.update(sql, vo.getPass(), vo.getName(), vo.getEmail(), vo.getTitle(), vo.getContent());
	}

	public int delete(Board1VO vo) {
		String sql = "delete from board1 where num="+vo.getNum()+"";
		
		return jdbcTemplate.update(sql);
	}
	public int update(Board1VO vo) {
		String sql = "update board1 set pass='" + vo.getPass() + "', " + "name='" + vo.getName() + "', " + "email='"
				+ vo.getEmail() + "', " + "title='" + vo.getTitle() + "', " + "content='" + vo.getContent() + "' "
				+ "where num='" + vo.getNum() + "'";
		return jdbcTemplate.update(sql);
	}

	public Board1VO selectOne(int num) {
		String sql = "select * from board1 where num=?";
		return jdbcTemplate.queryForObject(sql, new Board1Mapper(), num);
	}

	public List<Board1VO> selectAll() {
		String sql = "select * from board1";
		return jdbcTemplate.query(sql, new Board1Mapper());
	}

	class Board1Mapper implements RowMapper<Board1VO> {

		@Override
		public Board1VO mapRow(ResultSet rs, int arg1) throws SQLException {

			Board1VO vo = new Board1VO();
			vo.setNum(rs.getInt("num"));
			vo.setPass(rs.getString("pass"));
			vo.setName(rs.getString("name"));
			vo.setEmail(rs.getString("email"));
			vo.setTitle(rs.getString("title"));
			vo.setContent(rs.getString("content"));

			return vo;
		}
	}
}
