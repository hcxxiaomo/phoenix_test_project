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
public class User extends BaseBean{

	@Name
    @Column
    @Comment("主键")
    private String email;
	@Column
    private String password;
	@Column
	@Comment("还当作用户的校验码")
    private String salt;
	@Column
	private String name;
	@Column
	private String telephone;
	@Column
	private String address;
	@Column
	@Comment("类型：超级管理员super,实验组experiment,控制组control")
	private String type;
	@Column
	@Comment("是否禁用：禁用1,启用0")
	private Integer isClose;
	@Column
	@Comment("是否邮箱验证了：验证了1,未验证0")
	private Integer isValidateEmail;
	@Column
	@Comment("是否看了使用指南：看了1,未看0")
	private Integer isNotice;
	
    @Column
    @Comment("开始答题时间，来计算进入哪个阶段了")
    private Date startTime;//就是选择为实验组或者对照组的时间呢
    
    @Column
    @Comment("哪个阶段了")
    private String stage;
    
    @Column
    @Comment("阶段")
    private Integer stageTemp;
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getIsValidateEmail() {
		return isValidateEmail;
	}
	public void setIsValidateEmail(Integer isValidateEmail) {
		this.isValidateEmail = isValidateEmail;
	}
	public String getStage() {
		return stage;
	}
	public void setStage(String stage) {
		this.stage = stage;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Integer getStageTemp() {
		return stageTemp;
	}
	public void setStageTemp(Integer stageTemp) {
		this.stageTemp = stageTemp;
	}
	public Integer getIsNotice() {
		return isNotice;
	}
	public void setIsNotice(Integer isNotice) {
		this.isNotice = isNotice;
	}
	
    
	
}
