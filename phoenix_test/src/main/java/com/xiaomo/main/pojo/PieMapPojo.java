package com.xiaomo.main.pojo;

public class PieMapPojo {
	
	private String name;
	private Integer value;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}
	public PieMapPojo(String name, Integer value) {
		this.name = name;
		this.value = value;
	}
	public PieMapPojo() {
	}

}
