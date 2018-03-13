package com.xiaomo.main.module;

import javax.servlet.http.HttpSession;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.filter.CheckSession;

import com.xiaomo.main.utils.Constants;

@IocBean
@At("/manager")
@Ok("json")
@Fail("http:500")
@Filters(@By(type=CheckSession.class, args={"me", "/login"})) // 检查当前Session是否带me这个属性
public class ManagerModule {
	
	private static final Log log = Logs.get();
	
	 @At("/")
	    @Ok("jsp:jsp.manager.index")
	    public Object index(HttpSession session) {
		 log.infof("str = %s" ,session.getAttribute(Constants.SESSION_TYPE.getValue()));
//		log.info(session.getId());
	        return  session.getAttribute(Constants.SESSION_TYPE.getValue());
	    }

}
