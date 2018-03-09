package com.xiaomo.main.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;

import com.xiaomo.main.service.UserService;

@RunWith(MyNutTestRunner.class)
@IocBean // 必须有
public class SimpleTest {

	private static final Log log = Logs.get();
	
	// 跟通常的@Inject完全一样.
//    @Inject("refer:$ioc")
//    protected Ioc ioc;
    
    @Inject
    protected Dao dao;
//    @Inject
//    protected YellowCarService yellowCarService;
    @Inject
    protected UserService userService;
    
    @Test
    public void testSendMail(){
    	userService.sendEmail("hcxhcxhcx666666@163.com");
    }
  
}
