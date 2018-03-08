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
	
	 @At
    public Object login(@Param("username")String name, @Param("password")String password, HttpSession session) {
		 session.removeAttribute(Constants.SESSION_ME.getValue());
		 session.removeAttribute(Constants.SESSION_TYPE.getValue());
//		 log.info(session.getId());
		 if (StrUtil.isBlank(name) || StrUtil.isBlank(password) ) {
        	return false;
		}
		 User user = userService.login(name, password);
        if (user == null) {
            return false;
        } else {
            session.setAttribute(Constants.SESSION_ME.getValue(), user);
            if (Constants.SESSION_TYPE_SUPER.getValue().equals(user.getType())) {
            	 session.setAttribute(Constants.SESSION_TYPE.getValue(), Constants.SESSION_TYPE_SUPER.getValue());
			}else if(Constants.SESSION_TYPE_ADMIN.getValue().equals(user.getType())){
				session.setAttribute(Constants.SESSION_TYPE.getValue(), Constants.SESSION_TYPE_ADMIN.getValue());
			}
            return true;
        }
    }
	 
	  @At("/index")
	    @Ok("jsp:jsp.manager.login")
	    public void loginIndex(){
	    	
	    }
	  
	  @At
	    @Ok("jsp:jsp.manager.login")
	    public void logout(HttpSession session) {
	        session.invalidate();
	    }


}
