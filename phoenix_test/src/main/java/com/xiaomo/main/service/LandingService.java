package com.xiaomo.main.service;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;

import com.xiaoleilu.hutool.crypto.digest.DigestUtil;
import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaoleilu.hutool.util.RandomUtil;
import com.xiaomo.main.bean.IpInfo;
import com.xiaomo.main.bean.User;

@IocBean
public class LandingService {
	
	protected static final Log log = Logs.get();
	

	 @Inject
	 protected Dao dao;
	 
	 @Inject
	 protected MailService mailService;
	
	public boolean answer(String str,String ip){
		 log.infof("test1Ids = %s ,ip = %s ",str,ip);
		 IpInfo ip_fetch = dao.fetch(IpInfo.class, ip);
		 if (ip_fetch != null) {//如果ip是已经存在的，那么就是重复提交的数据了，就不能再提交
			return false;
		}
		  if ("0,-1,0,0".equals(str)
				  ) {
			return true;
		  }else{
			  ip_fetch = new IpInfo();
			  ip_fetch.setIp(ip);
			  dao.insert(ip_fetch);
			  return false;
		  }
	}
	
	
	 public boolean register_check(String inputEmail, String inputPassword, String inputName
			 , String inputTelephone, String inputAddress ){
		 boolean flag = false;
		 //先检查，是否已经注册过了
		 User user = dao.fetch(User.class, inputEmail);
		 Date date = DateUtil.date();
		 if (user != null) {//如果已经存在，那就更新一下数据就行
			 user.setEmail(inputEmail);
			user.setAddress(inputAddress);
			user.setName(inputName);
			user.setUpdateTime(date);
			dao.updateIgnoreNull(user);
		}else{//如果不存在，那就新增
			//保存数据，发邮件
			user = new User();
			user.setEmail(inputEmail);
			user.setAddress(inputAddress);
			user.setIsClose(0);
			user.setIsValidateEmail(0);
			user.setName(inputName);
			user.setType("user");
			 String salt = RandomUtil.randomString(6);
			 user.setPassword(DigestUtil.md5Hex(inputPassword.concat(salt)));
			user.setSalt(salt);
			user.setCreateTime(date);
			user.setUpdateTime(date);
			dao.insert(user);
			
		}
		//发邮件 验证码数据
		 flag = mailService.send(inputEmail, user.getSalt());
		  return flag;
	  }


	public boolean code_check(String inputCode,String email) {
		 User user = dao.fetch(User.class, email);
		 if (user != null
				 && user.getSalt().equals(inputCode)
				 ) {
			return true;
		}
		return false;
	}

}
