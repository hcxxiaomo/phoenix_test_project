package com.xiaomo.main.pojo;

public class TestPojo {
	
	private String date;//完成日期
	private String stage;//完成阶段
	private String info;//试题内容
	private Integer done;//是否完成(0：待完成；1：完成；2：未完成)
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStage() {
		return stage;
	}
	public void setStage(String stage) {
		this.stage = stage;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Integer getDone() {
		return done;
	}
	public void setDone(Integer done) {
		this.done = done;
	}
	
	

}
