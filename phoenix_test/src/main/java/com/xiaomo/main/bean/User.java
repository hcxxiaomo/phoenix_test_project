package com.xiaomo.main.bean;

import java.util.Date;
import java.util.List;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Comment;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Many;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;


@Table("t_user")
public class User {

	@Id
	@Column("id")
	private Integer userId;
	@Name
    @Column
    @Comment("保存的就是邮箱信息")
    private String name;
	@Column("passwd")
    private String password;
	@Column
    private String salt;
//	@Column
//	@Comment("创建该用户的父辈用户信息")
//	private Integer parentId;
//	@Column
//	@Comment("白名单权限")
//	private Integer whiteList;
//	@Column
//	@Comment("用户管理权限")
//	private Integer userManager;
//	@Column
//	@Comment("报表管理权限")
//	private Integer dataManager;
	@Column
	@Comment("类型：超级管理员super,管理员admin,普通人员user")
	private String type;
	@Column
	@Comment("是否禁用：禁用1,启用0")
	private Integer isClose;
	@Column("ct")
    private Date createTime;
	@Column("ut")
    private Date updateTime;
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getIsClose() {
		return isClose;
	}
	public void setIsClose(Integer isClose) {
		this.isClose = isClose;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [userId=").append(userId).append(", name=").append(name).append(", password=")
				.append(password).append(", salt=").append(salt).append(", type=").append(type).append(", isClose=")
				.append(isClose).append(", createTime=").append(createTime).append(", updateTime=").append(updateTime)
				.append("]");
		return builder.toString();
	}
	
    
	
}
