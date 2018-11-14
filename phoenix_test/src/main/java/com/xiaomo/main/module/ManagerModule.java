package com.xiaomo.main.module;

import javax.servlet.http.HttpSession;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.filter.CheckSession;

import com.xiaomo.main.bean.User;
import com.xiaomo.main.pojo.EasyUiJsonObj;
import com.xiaomo.main.service.LandingService;
import com.xiaomo.main.utils.Constants;

@IocBean
@At("/manager")
@Ok("json")
@Fail("http:500")
@Filters(@By(type=CheckSession.class, args={"me", "/manager/login"})) // 检查当前Session是否带me这个属性
public class ManagerModule {
	
	private static final Log log = Logs.get();
	
	@Inject
	private LandingService landingService;
	
	 @At
	    @Ok("jsp:jsp.manager.admin.index")
	    public EasyUiJsonObj<User> index(Integer pageNumber,Integer pageSize) {
		if (pageNumber == null) {
			pageNumber = 1;
		}
		if (pageSize == null) {
			pageSize = 20;
		}
//		 log.infof("str = %s" ,session.getAttribute(Constants.SESSION_TYPE.getValue()));
//		log.info(session.getId());
	        return  landingService.getInfoByPage(pageNumber, pageSize);
	    }
	 
	  @At
	  @Filters
	  @Ok("jsp:jsp.manager.admin.login")
	  public void login(){
	  }
	  
	  @At
	  @Filters
	  public NutMap login_check(String inputEmail, String inputPassword, HttpSession session){
		  
		 User  user =  landingService.admin_login_check(inputEmail,inputPassword);
		 if (user == null) {
			 return new NutMap().addv("msg", "用户名或密码错误！");
		}
		//传到后台进行处理，还要判断唯一性
		 session.setAttribute("me", user);//放用户数据进去使用
		 return new NutMap().addv("success", true);
	  }
	  
	  
	  @At("/t0_result/?/?")
	  @Ok("jsp:jsp.manager.admin.t0_result")
	  public NutMap t0_result(int userId,String stage){
		  log.infof("String userId = %s ,String stage = %s", userId,stage);
		  return landingService.t0_result(userId,stage);
	  }

	  @At("/t0_choose/?/?")
	  public NutMap t0_choose(Long userId,String type){
		  
		  return landingService.t0_choose( userId, type);
	  }
}
