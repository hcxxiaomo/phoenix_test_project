package com.xiaomo.main.module;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.Scope;
import org.nutz.mvc.ViewModel;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Attr;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.upload.TempFile;
import org.nutz.mvc.upload.UploadAdaptor;

import com.xiaoleilu.hutool.util.StrUtil;
import com.xiaomo.main.bean.TestInfo;
import com.xiaomo.main.bean.User;
import com.xiaomo.main.pojo.HappyPojo;
import com.xiaomo.main.service.LandingService;
import com.xiaomo.main.utils.NetUtils;

@IocBean
@At("/land")
@Ok("json")
@Fail("http:500")
public class LandingModule {
	
	private static final Log log = Logs.get();
	
	@Inject
	private LandingService landingService;
	
	  @At
	    @Ok("jsp:jsp.manager.landing")
	    public void landing(){
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.login")
	  public void login(){
	  }
	  
	  @At
	  public NutMap login_check(String inputEmail, String inputPassword, HttpSession session){
		  
		 User  user =  landingService.login_check(inputEmail,inputPassword);
		 if (user == null) {
			 return new NutMap().addv("msg", "用户名或密码错误！");
		}
		//传到后台进行处理，还要判断唯一性
		 session.setAttribute("user", user);//放用户数据进去使用
//		 NutMap resultMap =  new NutMap().addv("success", true);
		 return landingService.login_check_page(user);
		 
//		 return new NutMap().addv("success", true);
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
		  if (StrUtil.isBlank(session_can_register) || "false".equals(session_can_register)) {
			  return "jsp:jsp.manager.test_before";
		}
		  return null;
	  }
	  
	  @At
	  public NutMap answer(String str, HttpServletRequest request,@Attr(scope=Scope.SESSION, value="session_can_register")String session_can_register){
		  
		  if ("false".equals(session_can_register)) {//已经答过了，不能再答了
			  log.info("session_can_register表明已经答过了！");
			return new NutMap().addv("success", false);
//		  }else{
//			  // return true;
		  }
		  String ip = NetUtils.getIpAddr(request);//通过ip判断是否是已经提交过的用户了
		 boolean flag =  landingService.answer(str,ip);
		//传到后台进行处理，还要判断唯一性
		 HttpSession session = request.getSession();
		 session.setAttribute("session_can_register", flag+"");//无论是通过还是未通过，都需要保存到session里面去
		 return new NutMap().addv("success", flag);
	  }
	  
	  //检测注册信息，并发送邮件 TODO  也需要验证一下是否有权限注册呢！！
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
		  User user = landingService.code_check(email);
		  boolean flag = false;
		  if (user != null
					 && user.getSalt().equals(inputCode)
					 ) {
			  session.removeAttribute("email");
			  flag = true;
			  //更新用户表中验证为1
			  User userUpdate = new User();
			  userUpdate.setId(user.getId());
			  userUpdate.setIsValidateEmail(1);
			  user.setIsValidateEmail(1);
			  session.setAttribute("user", user);//放用户数据进去使用
			  landingService.updateUser(userUpdate);
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
	  
	  @At
	  @Ok("jsp:jsp.manager.t0")
	  public void t0(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.t0_post")
	  public void t0_post(HttpServletRequest  request,@Attr(scope=Scope.SESSION, value="user") User user){
		  landingService.t0_post(request.getParameterMap(),user);
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.trial_happy")
	  public void trial_happy(){
		  
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.experiment.finish")
	  @AdaptBy(type = UploadAdaptor.class, args = { "${app.root}/tmp" })
	  public NutMap trial_happy_post(@Param("..") HappyPojo hp, @Attr(scope=Scope.SESSION, value="user") User user
			 , @Param("file1")TempFile[] file1, @Param("file2")TempFile[] file2, @Param("file3")TempFile[] file3){
		  NutMap nm = landingService.trial_happy_post(hp,file1,file2,file3,user);
		  return nm.addv("url", hp.getStage());
	  }
	   
	  
	  @At
	  @Ok("jsp:jsp.manager.trial_letter")
	  public void trial_letter(){
		  
	  }
	  
	  @At
	  public void trial_letter_post(String letter,String stage){
		  landingService.trial_letter_post(letter,stage);
	  }
	  
	  @At
	  @Ok("jsp:jsp.manager.trial_now")
	  public void trial_now(){
	  }
	  
	  @At
	  public void trial_now_post(String experience,String vacation,String stage){
		  landingService.trial_now_post(experience,vacation, stage);
	  }
	  
	  @At
	  @Ok("re:jsp:jsp.manager.register")
	  public String main(@Attr(scope=Scope.SESSION, value="user")User user, ViewModel model){
		  //通过用户的数据信息来确定返回哪个页面
//		  if (StrUtil.isBlank(session_can_register) || "false".equals(session_can_register)) {
//			  return "jsp:jsp.manager.test_before";
//		}
		  return null;
	  }
	  
	  
	  @At
	  @Ok("jsp:jsp.manager.finish")
	  public void finish(){
	  }
	  
	  @At("/experiment/notice")
	  @Ok("jsp:jsp.manager.experiment.notice")
	  public void experiment_notice(){
	  }
	  
	  @At("/control/notice")
	  @Ok("jsp:jsp.manager.control.notice")
	  public void control_notice(){
	  }
	  
	  @At("/experiment/?/?")
	  @Ok("re:jsp:jsp.manager.finish")
	  public String experiment(ViewModel model ,@Attr(scope=Scope.SESSION, value="user")User user,String testPrefix,String testSuffix){
		  String url = testPrefix+"_"+testSuffix;
		  model.setv("url", url);
		  TestInfo  ti = landingService.getTi(user.getId(),url);
		  if (ti == null) {//没有完成当天的任务
			  return "jsp:jsp.manager.experiment.finish";
		  }else{
			  //很多页面重复的，可以进行相应的跳转到
			  if ("e1_1".equals(testPrefix)) {
				  return "jsp:jsp.manager.experiment.e1_1";
			  }
			  return "jsp:jsp.manager.experiment."+url;
		  }
	  }
	  
	  @At("/control/?/?")
	  @Ok("jsp:jsp.manager.finish")
	  public String control(ViewModel model ,@Attr(scope=Scope.SESSION, value="user")User user,String testPrefix,String testSuffix){
		  String url = testPrefix+"_"+testSuffix;
		  model.setv("url", url);
		  TestInfo  ti = landingService.getTi(user.getId(),url);
		  if (ti == null) {//没有完成当天的任务
			  return "jsp:jsp.manager.control.finish";
		  }else{
			  return "jsp:jsp.manager.control."+url;
		  }
	  }
	  
	  
	  

}
