package cakeDB;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class cakeDAO {

	private SqlSession session;

	public cakeDAO() {
		String path = "cakeDB/mybatis_conf.xml";
		InputStream is = null;
		try {
			is = Resources.getResourceAsStream(path);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			session = factory.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (Exception e) {
			}
		}
	}

	public int insert(cakeVO c) {
		cakeMapper mapper = session.getMapper(cakeMapper.class);
		return mapper.mapper_insert(c);

	}

	public cakeVO select_one(int pNum) {
		cakeMapper mapper = session.getMapper(cakeMapper.class);
		return mapper.mapper_select_one(pNum);
	}

	public List<cakeVO> select_all() {
		cakeMapper mapper = session.getMapper(cakeMapper.class);
		return mapper.mapper_select_all();
	}

	public int delete(int pNum) {
		cakeMapper mapper = session.getMapper(cakeMapper.class);
		return mapper.mapper_delete(pNum);
	}

	public int update(cakeVO c) {
		cakeMapper mapper = session.getMapper(cakeMapper.class);
		return mapper.mapper_update(c);
	}
}
