package com.xiaomo.main.utils;

public enum Constants {
	
	SESSION_ME("me","用户登录"),
	SESSION_TYPE("admin_type","用户类型"),
	SESSION_TYPE_SUPER("super","超级管理员"),
	SESSION_TYPE_ADMIN("admin","普通管理员"),
	SESSION_TYPE_USER("user","普通管理员");
	
	private String value;
	private String desc;
	
	private Constants(String value, String desc) {
		this.value = value;
		this.desc = desc;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	
	

}
