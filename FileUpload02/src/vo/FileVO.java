package vo;

public class FileVO {

	private int fileNum;
	private String originalName;
	private String savedPath;

	public int getFileNum() {
		return fileNum;
	}

	public void setFileNum(int fileNum) {
		this.fileNum = fileNum;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getSavedPath() {
		return savedPath;
	}

	public void setSavedPath(String savedPath) {
		this.savedPath= savedPath;
	}

	@Override
	public String toString() {
		return "FileVO [fileNum=" + fileNum + ", originalName=" + originalName + ", savedName=" + savedPath+ "]";
	}

	public FileVO(int fileNum, String originalName, String savedPath) {
		super();
		this.fileNum = fileNum;
		this.originalName = originalName;
		this.savedPath= savedPath;
	}

	public FileVO() {

	}

}
