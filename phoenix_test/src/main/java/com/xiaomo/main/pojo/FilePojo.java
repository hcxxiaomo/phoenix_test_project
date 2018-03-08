package com.xiaomo.main.pojo;

public class FilePojo {
	
	String fileName;
	String fileAbsolutePath;
	Integer type;//0-file;1-path
	String parentPath;
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileAbsolutePath() {
		return fileAbsolutePath;
	}
	public void setFileAbsolutePath(String fileAbsolutePath) {
		this.fileAbsolutePath = fileAbsolutePath;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	
	
	public String getParentPath() {
		return parentPath;
	}
	public void setParentPath(String parentPath) {
		this.parentPath = parentPath;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FileBean [fileName=").append(fileName).append(", fileAbsolutePath=").append(fileAbsolutePath)
		.append(", parentPath=").append(parentPath).append(", type=").append(type).append("]");
		return builder.toString();
	}
	
	
	

}
