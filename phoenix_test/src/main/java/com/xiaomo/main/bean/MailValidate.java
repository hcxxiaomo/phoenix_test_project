package com.xiaomo.main.bean;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Comment;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;

@Table("t_mail_validate")
public class MailValidate {
	
	@Id
	@Column("id")
	private Integer mvId;
	
	@Name
	@Column("email")
   	@Comment("验证的邮箱地址")
	private String email;
    
    @Column("validate")
   	@Comment("验证码")
	private String validate;

	public Integer getMvId() {
		return mvId;
	}

	public void setMvId(Integer mvId) {
		this.mvId = mvId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getValidate() {
		return validate;
	}

	public void setValidate(String validate) {
		this.validate = validate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MailValidate [mvId=").append(mvId).append(", email=").append(email).append(", validate=")
				.append(validate).append("]");
		return builder.toString();
	}
    
    

}