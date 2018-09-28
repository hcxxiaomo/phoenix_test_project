package com.xiaomo.main.bean;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Comment;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;

@Table("t_ip")
public class IpInfo extends BaseBean{
	
	@Name
	private String ip;

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}
    

}
