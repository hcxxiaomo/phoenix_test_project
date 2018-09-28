package com.xiaomo.main.module;

import javax.servlet.http.HttpSession;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.Scope;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Attr;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;

import com.xiaoleilu.hutool.util.StrUtil;
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
	  
	  
	  @At("/basic")
	  @Ok("jsp:jsp.manager.basicTest")
	  public void basicTestIndex(){
		  
	  }
	  @At("/basic/answer")
	  public Object basicAnswer(String test1Ids, String radio, HttpSession session){
		  log.infof("test1Ids = %s , radio = %s ",test1Ids, radio);
		  if ("A,B".equals(test1Ids)
				  && "option2".equals(radio)
				  ) {
			  session.setAttribute(Constants.SESSION_CAN_REGISTER.getValue(), Constants.SESSION_CAN_REGISTER.getValue());
			return true;
		  }
		  return false;
	  }
	  
	  @At
	    @Ok("jsp:jsp.manager.login")
	    public void logout(HttpSession session) {
	        session.invalidate();
	    }


}
