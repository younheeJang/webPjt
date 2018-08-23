package mapper;

import java.util.List;

import vo.FileVO;

public interface FileMapper {

	public int insertFile(FileVO file);
	
	public FileVO selectFile(int fileNum);
	
	public List<FileVO> selectAll();
}
