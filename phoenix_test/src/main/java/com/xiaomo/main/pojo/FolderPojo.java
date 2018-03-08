package com.xiaomo.main.pojo;

import java.util.List;
import java.util.Map;

public class FolderPojo {
	
	private Integer id;
	private String text;
	private String state;
	private String absolutePath;
	private String iconCls;
	Boolean checked;
	Map<String ,String> attributes;
	List<FolderPojo> children;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Boolean getChecked() {
		return checked;
	}
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	public Map<String, String> getAttributes() {
		return attributes;
	}
	public void setAttributes(Map<String, String> attributes) {
		this.attributes = attributes;
	}
	public List<FolderPojo> getChildren() {
		return children;
	}
	public void setChildren(List<FolderPojo> children) {
		this.children = children;
	}
	public String getIconCls() {
		return iconCls;
	}
	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
	public String getAbsolutePath() {
		return absolutePath;
	}
	public void setAbsolutePath(String absolutePath) {
		this.absolutePath = absolutePath;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FolderPojo [id=").append(id).append(", text=").append(text).append(", state=").append(state)
				.append(", checked=").append(checked).append(", attributes=").append(attributes).append(", children=")
				.append(children).append(", absolutePath=").append(absolutePath).append(", iconCls=").append(iconCls).append("]");
		return builder.toString();
	}
	
	
	

}
