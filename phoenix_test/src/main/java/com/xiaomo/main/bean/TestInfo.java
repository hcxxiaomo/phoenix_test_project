package com.xiaomo.main.bean;

import org.nutz.dao.entity.annotation.ColDefine;
import org.nutz.dao.entity.annotation.ColType;
import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Comment;
import org.nutz.dao.entity.annotation.Table;

@Table("t_test")
public class TestInfo  extends BaseBean{

	@Column
   	@Comment("哪个测试阶段")
	private String stage;
	
	@Column
	@ColDefine(type=ColType.TEXT)
   	@Comment("测试数据的内容")
	private String text;
	
	@Column
   	@Comment("测试的人员信息")
	private Long userId;
	
	public String getStage() {
		return stage;
	}
	public void setStage(String stage) {
		this.stage = stage;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
}
