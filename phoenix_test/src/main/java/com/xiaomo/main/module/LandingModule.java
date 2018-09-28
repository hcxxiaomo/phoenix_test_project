package com.xiaomo.main.module;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nutz.Nutz;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.util.NutMap;
import org.nutz.mvc.Scope;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Attr;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;

import com.xiaoleilu.hutool.util.StrUtil;
import com.xiaomo.main.service.LandingService;
import com.xiaomo.main.utils.Constants;
import com.xiaomo.main.utils.NetUtils;

@IocBean
@At("/land")
@Ok("json")
@Fail("http:500")
public class LandingModule {
	
	@Inject
	private LandingService landingService;
	
	  @At
	    @Ok("jsp:jsp.manager.landing")
	    public void landing(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.agree")
	  public void agree(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.check_code")
	  public void check_code(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.contact_us")
	  public void contact_us(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.disclaimer")
	  public void disclaimer(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.main_control")
	  public void main_control(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.main_sa1")
	  public void main_sa1(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.main_sa2")
	  public void main_sa2(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.main_sa3")
	  public void main_sa3(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.main_sa4")
	  public void main_sa4(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.main_test")
	  public void main_test(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.notice_control")
	  public void notice_control(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.main_sa1")
	  public void notice_test(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.ppi")
	  public void ppi(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.privacy_policy")
	  public void privacy_policy(){
		  
	  }
	  
	  @At
	  @Ok("re:jsp:jsp.manager.register")
	  public String register(@Attr(scope=Scope.SESSION, value="session_can_register")String session_can_register){
		  if ("false".equals(session_can_register)) {
			  return "jsp:jsp.manager.test_before";
		}
		  return null;
	  }
	  
	  @At
	  public NutMap answer(String str, HttpServletRequest request,@Attr(scope=Scope.SESSION, value="session_can_register")String session_can_register){
		  
		  if ("false".equals(session_can_register)) {//已经答过了，不能再答了
			return new NutMap().addv("success", false);
//		  }else{
//			  // return true;
		  }
		  String ip = NetUtils.getIpAddr(request);//通过ip判断是否是已经提交过的用户了
		 boolean flag =  landingService.answer(str,ip);
		//传到后台进行处理，还要判断唯一性
		 //TODO 是否需要用ip进行判断用户
		 HttpSession session = request.getSession();
		 session.setAttribute("session_can_register", flag+"");//无论是通过还是未通过，都需要保存到session里面去
		 return new NutMap().addv("success", flag);
	  }
	  
	  //检测注册信息，并发送邮件
	  @At
	  public NutMap register_check(String inputEmail, String inputPassword, String inputName, String inputTelephone, String inputAddress ,HttpSession session){
		  
		  boolean flag = landingService.register_check(inputEmail, inputPassword, inputName, inputTelephone, inputAddress);
		 if (flag) {
			 session.setAttribute("email", inputEmail);
		 }
		  return new NutMap().addv("success", flag);
	  }
	  @At
	  public NutMap code_check(String inputCode,@Attr(scope=Scope.SESSION, value="email")String email,HttpSession session){
		  boolean flag = landingService.code_check(inputCode,email);
		  if (flag) {
			  session.removeAttribute("email");
		  }
		  return new NutMap().addv("success", flag);
	  }
	  
	 /* @At("/register")
	  @Ok("re:jsp:jsp.manager.register")
	  public String registerIndex( @Attr(scope=Scope.SESSION, value="session_can_register")String session_can_register){
		  if (StrUtil.isBlank(session_can_register)) {
			  return "jsp:jsp.manager.basicTest";
		}
		  return null;
	  }*/
	  
	  @At
	  @Ok("jsp:jsp.manager.test_before")
	  public void test_before(){
		  
	  }
	    	

}
