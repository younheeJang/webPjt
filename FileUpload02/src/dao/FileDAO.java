package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mapper.FileMapper;
import vo.FileVO;

@Component
public class FileDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	public int insert(FileVO file) {
		FileMapper mapper = template.getMapper(FileMapper.class);
		return mapper.insertFile(file);
	}

	public FileVO select(int fileNum) {
		FileMapper mapper = template.getMapper(FileMapper.class);
		return mapper.selectFile(fileNum);
	}

	public List<FileVO> selectAll(){
		FileMapper mapper = template.getMapper(FileMapper.class);
		return mapper.selectAll();
	}
}
