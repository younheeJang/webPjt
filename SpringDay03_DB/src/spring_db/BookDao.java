package spring_db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class BookDao {

	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int insert(BookVO book) {
		String sql = "INSERT INTO BOOK_TB" + "(BOOK_NUM, TITLE, WRITER, PRICE)" + "VALUES(?,?,?,?)";

		return jdbcTemplate.update(sql, book.getBookNum(), book.getTitle(), book.getWriter(), book.getPrice());
	}

	public BookVO selectOne(int bookNum) {
		String sql = "select * from book_tb where book_num=?";
		return jdbcTemplate.queryForObject(sql, new BookMapper(), bookNum);
	}

	public List<BookVO> selectAll(){
		String sql = "select * from book_tb";
		return jdbcTemplate.query(sql, new BookMapper());
		
	}
	class BookMapper implements RowMapper<BookVO> {

		@Override
		public BookVO mapRow(ResultSet rs, int arg1) throws SQLException {

			BookVO b = new BookVO();
			b.setBookNum(rs.getInt("BOOK_NUM"));
			b.setTitle(rs.getString("TITLE"));
			b.setPrice(rs.getInt("PRICE"));
			b.setWriter(rs.getString("writer"));
			return b;
		}

	}

}
