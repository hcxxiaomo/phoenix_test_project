package com.xiaomo.main.bean;

import java.util.Date;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Comment;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;

@Table("t_data_dictionary")
public class DataDictionary {

	@Id
	@Column("id")
	private Integer itId;
	
	@Column("dic_info")
   	@Comment("数据字典内容")
	private String dicInfo;
    
//	@Name
    @Column("dic_type")
   	@Comment("数据字典类型")
	private String dicType;
	
	@Column("ct")
	@Comment("创建时间")
    private Date createTime;

	public Integer getItId() {
		return itId;
	}

	public void setItId(Integer itId) {
		this.itId = itId;
	}
	public String getDicInfo() {
		return dicInfo;
	}

	public void setDicInfo(String dicInfo) {
		this.dicInfo = dicInfo;
	}

	public String getDicType() {
		return dicType;
	}

	public void setDicType(String dicType) {
		this.dicType = dicType;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
