package com.xiaomo.main.module;

import javax.servlet.http.HttpSession;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import com.xiaoleilu.hutool.util.StrUtil;
import com.xiaomo.main.bean.User;
import com.xiaomo.main.service.UserService;
import com.xiaomo.main.utils.Constants;

@IocBean
@At("/")
@Ok("json")
@Fail("http:500")
public class LoginModule {
	
	private static final Log log = Logs.get();
	
	 @Inject
	 protected UserService userService;
	
	 
	  @At("/login")
	    @Ok("jsp:jsp.manager.login")
	    public void loginIndex(){
	    	
	    }
	  
	  @At("/register")
	  @Ok("jsp:jsp.manager.register")
	  public void registerIndex(){
		  
	  }
	  
	  @At
	    @Ok("jsp:jsp.manager.login")
	    public void logout(HttpSession session) {
	        session.invalidate();
	    }


}
