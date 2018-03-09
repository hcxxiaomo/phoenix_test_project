package com.xiaomo.main;

import java.util.Date;

import org.apache.commons.mail.HtmlEmail;
import org.nutz.dao.Dao;
import org.nutz.ioc.Ioc;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;

import com.xiaomo.main.bean.DataDictionary;
import com.xiaomo.main.bean.MailValidate;
import com.xiaomo.main.bean.User;

public class MainSetup  implements Setup{

	@Override
	public void init(NutConfig nc) {
		Ioc ioc = nc.getIoc();
        Dao dao = ioc.get(Dao.class);
        // 如果没有createTablesInPackage,请检查nutz版本
//        Daos.createTablesInPackage(dao, "com.xiaomo.main", false);
        dao.create(User.class, false);
        // 初始化默认根用户
        if (dao.count(User.class) == 0) {
            User user = new User();
            user.setName("admin");
            user.setPassword("8e0dd6b974fa4bce2573809d976487b6");//phoenix@test
            user.setSalt("apbb3v");
            user.setType("super");
            user.setCreateTime(new Date());
            user.setUpdateTime(new Date());
            user.setWhiteList(1);
            user.setUserManager(1);
            dao.insert(user);
        }
        dao.create(MailValidate.class, false);
        dao.create(DataDictionary.class, false);
        
        // 获取NutQuartzCronJobFactory从而触发计划任务的初始化与启动
//        ioc.get(NutQuartzCronJobFactory.class);
        
        // 测试发送邮件
//        try {
//            HtmlEmail email = ioc.get(HtmlEmail.class);
//            email.setSubject("测试NutzBook");
//            email.setMsg("This is a test mail ... :-)" + System.currentTimeMillis());
//            email.addTo("hcxhcxhcx666666@163.com");//请务必改成您自己的邮箱啊!!!
//            email.buildMimeMessage();
//            email.sendMimeMessage();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
	}

	@Override
	public void destroy(NutConfig nc) {
		// TODO Auto-generated method stub
		
	}

}
