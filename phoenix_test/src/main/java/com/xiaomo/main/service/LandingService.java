package com.xiaomo.main.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.nutz.dao.Cnd;
import org.nutz.dao.Condition;
import org.nutz.dao.Dao;
import org.nutz.dao.pager.Pager;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.json.Json;
import org.nutz.json.JsonFormat;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.upload.TempFile;

import com.xiaoleilu.hutool.crypto.digest.DigestUtil;
import com.xiaoleilu.hutool.date.DateUnit;
import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaoleilu.hutool.json.JSONObject;
import com.xiaoleilu.hutool.util.RandomUtil;
import com.xiaomo.main.bean.IpInfo;
import com.xiaomo.main.bean.TestInfo;
import com.xiaomo.main.bean.User;
import com.xiaomo.main.pojo.EasyUiJsonObj;
import com.xiaomo.main.pojo.HappyPojo;
import com.xiaomo.main.utils.Constants;

@IocBean
public class LandingService {
	
	protected static final Log log = Logs.get();
	

	 @Inject
	 protected Dao dao;
	 
	 @Inject
	 protected MailService mailService;
	 
	 @Inject
	 protected TestInfoService testInfoService;
	 
	
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
			  ip_fetch.setCreateTime(new Date());
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
			user.setTelephone(inputTelephone);
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
			user.setTelephone(inputTelephone);
			user.setType("user");
			 String salt = RandomUtil.randomString(6);
			 user.setPassword(DigestUtil.md5Hex(inputPassword.concat(salt)));
			user.setSalt(salt);//当成邮箱的验证码来使用的
			user.setCreateTime(date);
			user.setUpdateTime(date);
			dao.insert(user);
			
		}
		//发邮件 验证码数据
		 flag = mailService.send(inputEmail, user.getSalt());
		  return flag;
	  }


	public User code_check(String email) {
		return dao.fetch(User.class, email);
		/* User user = dao.fetch(User.class, email);
		 if (user != null
				 && user.getSalt().equals(inputCode)
				 ) {
			return true;
		}
		return false;*/
	}
	
	public void updateUser(User user) {
		dao.updateIgnoreNull(user);
	}


	public NutMap t0_post(Map<String, String[]> parameterMap,User user) {
		
		Map<String,String> map = parameter2map(parameterMap);
		log.info(Json.toJson(map,JsonFormat.compact()));
		TestInfo ti = new TestInfo();
		ti.setCreateTime(new Date());
		ti.setStage("t0");
		ti.setText(Json.toJson(map,JsonFormat.compact()));
		ti.setUserId(user.getId());
		return testInfoService.addOrUpdate(ti, user);
	}


	private Map<String,String> parameter2map(Map<String, String[]> parameterMap) {
		Map<String,String> map = new HashMap<>();
		for (Entry<String, String[]> ele : parameterMap.entrySet()) {
			if ( ele.getValue() != null && ele.getValue()[0] != null) {
				map.put(ele.getKey(), ele.getValue()[0]);
			}
		}
		return map;
	}


	public NutMap trial_happy_post(HappyPojo hp, TempFile[] file1, TempFile[] file2, TempFile[] file3,User user) {
		log.info(Json.toJson(hp,JsonFormat.compact()));
		if (file1 != null && file1[0] != null) {
			hp.setHappyOneFile(file1[0].getFile().getAbsolutePath());//TODO 改成正确的url
		}
		if (file2 != null && file2[0] != null) {
			hp.setHappyOneFile(file2[0].getFile().getAbsolutePath());//TODO 改成正确的url
		}
		if (file3 != null && file3[0] != null) {
			hp.setHappyOneFile(file3[0].getFile().getAbsolutePath());//TODO 改成正确的url
		}
		TestInfo ti = new TestInfo();
		ti.setCreateTime(new Date());
		ti.setStage(hp.getStage());
		ti.setText(Json.toJson(hp,JsonFormat.compact()));
		ti.setUserId(user.getId());
		return testInfoService.addOrUpdate(ti, user);
	}


	public void trial_letter_post(String letter, String stage) {
		log.infof("letter= %s ,stage= %s",letter,stage);
	}


	public void trial_now_post(String experience, String vacation, String stage) {
		log.infof("experience= %s ,vacation= %s,stage= %s",experience,vacation,stage);		
	}


	public User login_check(String inputEmail, String inputPassword) {
		User user = dao.fetch(User.class, inputEmail);
		 if (user == null) {//用户名错误
				return null;
			 }
			 if (user.getPassword().equals(//密码正确(MD5)
					 DigestUtil.md5Hex(inputPassword.concat(user.getSalt())))
					 ) {
				return user;
			 }
			 return null;
	}
	
	public User admin_login_check(String inputEmail, String inputPassword) {
		User user = dao.fetch(User.class, inputEmail);
		if (user == null || !Constants.SESSION_TYPE_SUPER.getValue().equals(user.getType())) {//用户名错误
			return null;
		}
		if (user.getPassword().equals(//密码正确(MD5)
				DigestUtil.md5Hex(inputPassword.concat(user.getSalt())))
				) {
			return user;
		}
		return null;
	}


	public NutMap t0_result(int userId,String stage) {
		TestInfo ti =  getTi(userId, stage);
		if (ti != null) {
			String info = ti.getText();
			Map<String,String> result = Json.fromJsonAsMap(String.class, info);
			return new NutMap().addv("result", result).addv("userId", userId).addv("stage", stage);
		}
		return null;
	}


	public NutMap login_check_page(User user) {
		NutMap resultMap = new NutMap().addv("success", true);
		//查看用户的阶段，来跳转到对应的页面中去！ TODO 其他地方改变以后，也要更新这里面的阶段信息呢
		 if (user.getIsValidateEmail() == null || user.getIsValidateEmail() == 0) {//如果用户没有验证邮箱，需要验证邮箱
			//发邮件 验证码数据
			 mailService.send(user.getEmail(), user.getSalt());
			 resultMap.addv("page", "/phoenix_test/land/check_code");
		}else if(dao.fetch(TestInfo.class,Cnd.where("userId", "=", user.getId()).and("stage", "=", "t0")) == null){//如果没有完成 t0，跳转到对应的阶段
			resultMap.addv("page", "/phoenix_test/land/t0");
		}else if(user.getStartTime() == null){//如果没有分组，直接到等待结果页面
			resultMap.addv("page", "/phoenix_test/land/finish");
		}else{//计算时间，跳转到对应的页面中去
			Date startTime = user.getStartTime();
			startTime = DateUtil.beginOfDay(startTime);//把2018-10-21 11:57:14变成 2018-10-21 00:00:00
			Date now = DateUtil.beginOfDay(new Date());//把今天的日期改成零点的
			long dateParid = DateUtil.between(startTime, now, DateUnit.DAY);
			if ("experiment".equals(user.getType())) {
				resultMap.setAll(getPageExperiment((int)dateParid, user));
			}else if ("control".equals(user.getType())){
				resultMap.setAll(getPageControl((int)dateParid, user));
			}else{
				resultMap.addv("page", "/phoenix_test/land/finish");
			}
		}
		 
		return resultMap;
	}
	
	/**实验组对应的页面信息*/
	private Map<String,Object> getPageExperiment(int dateParid,User user){
		Map<String,Object> map = new HashMap<>();
		if (dateParid >= 1 || dateParid <= 7) {//三件开心的事（每天都可以写，一共可以写3*7件）
			//会跳转到对应的那天去
			map.put("page", "/phoenix_test/land/experiment/e1_1/"+dateParid);
		}else if(dateParid >= 8 || dateParid <= 14){
			//如果还没写感谢信
			TestInfo ti = getTi(user.getId(), "e2_1_1");
			if (ti == null) {
				map.put("page", "/phoenix_test/land/experiment/e2_1/1");
				//如果没有完成 所有的任务，进入行动计划中去 TODO 
			}else{////三件开心的事（每天都可以写，一共可以写3*7件）
				map.put("page", "/phoenix_test/land/experiment/e2_3/"+(dateParid-7));
			}
		}else if(dateParid >= 15 || dateParid <= 21){
			map.put("page", "/phoenix_test/land/experiment/e3_1/"+(dateParid-14));
		}else if(dateParid >= 22 || dateParid <= 27){
			map.put("page", "/phoenix_test/land/experiment/e4_1/"+(dateParid-21));
		}else if(dateParid == 28){
			map.put("page", "/phoenix_test/land/experiment/e4_3/"+(dateParid-21));
		}
		return map;
	}
	
	/**参照组对应的页面信息*/
	private Map<String,Object> getPageControl(int dateParid,User user){
		Map<String,Object> map = new HashMap<>();
		if (dateParid >= 1 || dateParid <= 7) {//三件开心的事（每天都可以写，一共可以写3*7件）
			//会跳转到对应的那天去
			map.put("page", "/phoenix_test/land/control/c1_1/1");
		}else if(dateParid >= 8 || dateParid <= 14){
			map.put("page", "/phoenix_test/land/control/e2_1/1");
		}else if(dateParid >= 15 || dateParid <= 21){
			map.put("page", "/phoenix_test/land/control/e3_1/1");
		}else if(dateParid >= 22 || dateParid <= 28){
			map.put("page", "/phoenix_test/land/control/e4_1/1");
		}
		return map;
	}
	
	public TestInfo getTi(long userId,String stage){
		return dao.fetch(TestInfo.class,Cnd.where("userId", "=", userId).and("stage", "=", stage));
	}


	public NutMap t0_choose(Long userId, String type) {
		User user = new User();
		user.setId(userId);
		user.setType(type);
		dao.updateIgnoreNull(user);
		return new NutMap().addv("success", true);
	}


	/*public void experiment(Long userId,String stage) {
		TestInfo ti = getTi(userId, stage);//是否已经完成了，有一些具有多个步骤的，需要进行完成
		
	}*/


	/*public void control(Long userId,String stage) {
		TestInfo ti = getTi(userId, stage);//是否已经完成了
		
	}*/
	
	
	 public EasyUiJsonObj<User> getInfoByPage(Integer pageNumber,Integer pageSize
			 ){
		 EasyUiJsonObj<User>  easyUiJsonObj = new EasyUiJsonObj<User>();
		 Pager page = dao.createPager(pageNumber, pageSize);
		 Cnd c = null;
		 Condition condition = null;
		 c =  Cnd.where(Cnd.exps("type", "<>","super"));
			condition = c.desc("id");
		 
		 List<User> list = dao.query(User.class, condition ,page);
		 easyUiJsonObj.setTotal(dao.count(User.class,condition));
		 easyUiJsonObj.setRows(list);
		 return easyUiJsonObj;
	 }

}
