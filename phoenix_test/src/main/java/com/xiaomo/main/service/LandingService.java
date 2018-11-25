package com.xiaomo.main.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.nutz.dao.Condition;
import org.nutz.dao.Dao;
import org.nutz.dao.FieldMatcher;
import org.nutz.dao.pager.Pager;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.json.Json;
import org.nutz.json.JsonFormat;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.ViewModel;
import org.nutz.mvc.upload.TempFile;

import com.xiaoleilu.hutool.crypto.digest.DigestUtil;
import com.xiaoleilu.hutool.date.DateUnit;
import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaoleilu.hutool.json.JSONObject;
import com.xiaoleilu.hutool.json.JSONUtil;
import com.xiaoleilu.hutool.util.RandomUtil;
import com.xiaomo.main.bean.IpInfo;
import com.xiaomo.main.bean.TestInfo;
import com.xiaomo.main.bean.User;
import com.xiaomo.main.pojo.EasyUiJsonObj;
import com.xiaomo.main.pojo.HappyPojo;
import com.xiaomo.main.pojo.TargetPojo;
import com.xiaomo.main.pojo.TestPojo;
import com.xiaomo.main.utils.CommonUtils;
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
			user.setType("experiment");//  TODO 后期需要按照给定的数据，来分实验组还是对照组
			user.setStageTemp(1);//TODO 测试时候需要的功能
			user.setIsNotice(0);
			dao.insert(user);
			
		}
		//发邮件 验证码数据
		 flag = mailService.sendRegisterCode(inputEmail, user.getSalt());
		  return flag;
	  }
	 
	 public boolean forget_password_send_code(String inputEmail ){
		 boolean flag = false;
		 //先检查，是否已经注册过了
		 User user = dao.fetch(User.class, inputEmail);
		 if (user != null) {//如果已经存在
			 user.setEmail(inputEmail);
			 //发邮件 验证码数据
			 flag = mailService.sendRegisterCode(inputEmail, user.getSalt());
		 }
		return flag;
	 }


	public NutMap forget_password_new_password(String inputEmail, String inputCode, String inputPassword) {
		 boolean flag = false;
		 //先检查，是否已经注册过了 还要区分是实验组还是对照组
		 NutMap nm = null;
		 String page = "/phoenix_test/land/index";
		 
		 User user = dao.fetch(User.class, inputEmail);
		 if (user != null && user.getSalt().equals(inputCode)) {//如果已经存在
			 user.setEmail(inputEmail);
			 String salt = RandomUtil.randomString(6);
			 user.setPassword(DigestUtil.md5Hex(inputPassword.concat(salt)));
			user.setSalt(salt);//当成邮箱的验证码来使用的
			dao.updateIgnoreNull(user);
/*			if("experiment".equals(user.getType())) {
				page = "/phoenix_test/land/experiment/today";
			}else if("control".equals(user.getType())) {
				page = "/phoenix_test/land/control/today";
			}*/
			nm = login_check_page(user);
			nm.remove("success");
			flag = true;
		 }
		 nm.addv("flag", flag).addv("user", user);
		 return nm;
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
		//完成需要更新一下startDate，完成T0才算正式开始测试呢
		User userInsert = new User();
		userInsert.setId(user.getId());
		userInsert.setStartTime(new Date());
		dao.updateIgnoreNull(userInsert);
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
		if (file1 != null && file1.length >=1) {
			hp.setHappyOneFile(getFilePath(file1[0].getFile().getAbsolutePath()));
		}
		if (file2 != null && file2.length >=1) {
			hp.setHappyOneFile(getFilePath(file2[0].getFile().getAbsolutePath()));
		}
		if (file3 != null && file3.length >=1) {
			hp.setHappyOneFile(getFilePath(file3[0].getFile().getAbsolutePath()));
		}
		TestInfo ti = new TestInfo();
		ti.setCreateTime(new Date());
		ti.setStage(hp.getStage());
		ti.setText(Json.toJson(hp,JsonFormat.compact()));
		ti.setUserId(user.getId());
		return testInfoService.addOrUpdate(ti, user);
	}


	public NutMap trial_letter_post(String letter, String stage,String letterFeeling ,String videoTime,String totalTime,User user) {
		log.infof("letter= %s ,stage= %s",letter,stage);
		NutMap nm = new NutMap();
		nm.addv("letter", letter);
		nm.addv("letterFeeling", letterFeeling);
		nm.addv("stage", stage);
		nm.addv("videoTime", videoTime);
		nm.addv("totalTime", totalTime);
		
		TestInfo ti = new TestInfo();
		ti.setCreateTime(new Date());
		ti.setStage(stage);
		ti.setText(Json.toJson(nm,JsonFormat.compact()));
		ti.setUserId(user.getId());
		return testInfoService.addOrUpdate(ti, user);
	}

	public NutMap trial_savoring_post(String experience, String vacation, String stage,String videoTime,String totalTime,User user) {
		log.infof("experience= %s ,vacation= %s,stage= %s",experience,vacation,stage);	
		NutMap nm = new NutMap();
		nm.addv("letter", experience);
		nm.addv("vacation", vacation);
		nm.addv("videoTime", videoTime);
		nm.addv("totalTime", totalTime);
		nm.addv("stage", stage);
		
		TestInfo ti = new TestInfo();
		ti.setCreateTime(new Date());
		ti.setStage(stage);
		ti.setText(Json.toJson(nm,JsonFormat.compact()));
		ti.setUserId(user.getId());
		return testInfoService.addOrUpdate(ti, user);
		
	}

	public NutMap trial_optimism_post(String optimism, String stage,String videoTime,String totalTime,User user) {
		log.infof("optimism= %s ,stage= %s",optimism,stage);
		NutMap nm = new NutMap();
		nm.addv("optimism", optimism);
		nm.addv("videoTime", videoTime);
		nm.addv("totalTime", totalTime);
		nm.addv("stage", stage);
		TestInfo ti = new TestInfo();
		ti.setCreateTime(new Date());
		ti.setStage(stage);
		ti.setText(Json.toJson(nm,JsonFormat.compact()));
		ti.setUserId(user.getId());
		return testInfoService.addOrUpdate(ti, user);
		
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
			 mailService.sendRegisterCode(user.getEmail(), user.getSalt());
			 resultMap.addv("page", "/phoenix_test/land/check_code");
		}else if(user.getIsNotice() == null ||  user.getIsNotice() == 0){//是否看完成了Notice
			resultMap.addv("page", "/phoenix_test/land/"+user.getType()+"/notice");
		}else if(dao.fetch(TestInfo.class,Cnd.where("userId", "=", user.getId()).and("stage", "=", "t0")) == null){//如果没有完成 t0，跳转到对应的阶段
			resultMap.addv("page", "/phoenix_test/land/t0");
		}else if(user.getStartTime() == null){//如果没有分组，直接到等待结果页面
			resultMap.addv("page", "/phoenix_test/land/finish");
		}else{//计算时间，跳转到对应的页面中去
			/*Date startTime = user.getStartTime();
			startTime = DateUtil.beginOfDay(startTime);//把2018-10-21 11:57:14变成 2018-10-21 00:00:00
			Date now = DateUtil.beginOfDay(new Date());//把今天的日期改成零点的
			long dateParid = DateUtil.between(startTime, now, DateUnit.DAY);
			if ("experiment".equals(user.getType())) {
				resultMap.setAll(getPageExperiment((int)dateParid, user));
			}else if ("control".equals(user.getType())){
				resultMap.setAll(getPageControl((int)dateParid, user));
			}else{
				resultMap.addv("page", "/phoenix_test/land/finish");
			}*/
			//修改成了直接跳转到对应的页面中去了
			if ("experiment".equals(user.getType())) {
				resultMap.addv("page", "/phoenix_test/land/experiment/today");
			}else if ("control".equals(user.getType())){
				resultMap.addv("page", "/phoenix_test/land/experiment/today");
			}else{
				resultMap.addv("page", "/phoenix_test/land/finish");
			}
		}
		 
		return resultMap;
	}
	
	/**实验组对应的页面信息*/
	@Deprecated
	private Map<String,Object> getPageExperimentOld(int dateParid,User user){
		Map<String,Object> map = new HashMap<>();
		if (dateParid >= 1 || dateParid <= 7) {//三件开心的事（每天都可以写，一共可以写3*7件）
			//会跳转到对应的那天去
			map.put("page", "/phoenix_test/land/experiment/e1_1/"+dateParid);
		}else if(dateParid >= 8 || dateParid <= 14){
			//如果还没写感谢信
			TestInfo ti = getTi(user.getId(), "e2_1_1");
			if (ti == null) {
				map.put("page", "/phoenix_test/land/experiment/e2_1/1");
				//TODO 如果没有完成 所有的任务，进入行动计划中去 
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
	
	/**需要判断是否完成了当天的任务呢，所有当天任务的统一入口*/
	public Map<String,Object> getPageExperiment(int dateParid,User user){
		
		Date startTime = user.getStartTime();
//		startTime = DateUtil.beginOfDay(startTime);//把2018-10-21 11:57:14变成 2018-10-21 00:00:00
//		Date now = DateUtil.beginOfDay(new Date());//把今天的日期改成零点的
//		int dateParid = (int)DateUtil.between(startTime, now, DateUnit.DAY);
		
		NutMap map = new NutMap();
		Map<String,List<TestPojo>> mapTestInfoPojo = new HashMap<>();
		
		String stage = null;
		TestInfo ti = null;
		String page = null;
		
		//保存当前的任务-时间-是否完成
//		List<TestPojo> list = null;
//		TestPojo tp = null;
		
		if (dateParid >= 1 && dateParid <= 7) {//三件开心的事（每天都可以写，一共可以写3*7件）
			//会跳转到对应的那天去
			page = "jsp:jsp.manager.experiment.1_Three_good_things";
			stage ="e1_1_"+dateParid;
			//要增加当天的信息
//			List<TestPojo> list = getTestPojoInfo(1,7,"三件開心的事",startTime);
			mapTestInfoPojo.put("Three_good_things", getTestPojoInfo(1,7,1,"三件開心的事",startTime));
			
		}else if(dateParid >= 8 && dateParid <= 14){
			//如果还没写感谢信
			ti = getTi(user.getId(), "e2_1_1");
			if (ti == null) {
				page= "jsp:jsp.manager.experiment.2_Gratitude_Letter";
				stage = "e2_1_1";
				//如果没有完成 所有的任务，进入行动计划中去 TODO
			}else if (getTi(user.getId(), "a_1") == null) {
				page= "jsp:jsp.manager.experiment.action_1";
				stage = "a_1";
			}else{//三件开心的事（每天都可以写，一共可以写3*7件）
				page = "jsp:jsp.manager.experiment.1_Three_good_things";
				stage = "e2_3_"+(dateParid-7);
			}
			mapTestInfoPojo.put("Gratitude_Letter", getTestPojoInfo(8,8,1,"感恩信",startTime));
			mapTestInfoPojo.put("Three_good_things", getTestPojoInfo(8,14,3,"三件開心的事",startTime));
		}else if(dateParid >= 15 && dateParid <= 21){//TODO 增加行动计划
			ti = getTi(user.getId(), "e3_1_"+(dateParid-14));
			if (ti == null) {// 活在當下練習
				page = "jsp:jsp.manager.experiment.3_Savoring";
				stage ="e3_1_"+(dateParid-14);
//			}else if (getTi(user.getId(), "a_1") == null) {
//				page= "jsp:jsp.manager.experiment.action_1";
//				stage = "a_1";
			}else if (getTi(user.getId(), "a_2") == null) {
				page= "jsp:jsp.manager.experiment.action_2";
				stage = "a_2";
				TestInfo ti_a_1 = getTi(user.getId(), "a_1");//增加第一次行动计划数据
				if (ti_a_1 != null) {
					Map<String, String> ti_a_1_map = Json.fromJsonAsMap(String.class, ti_a_1.getText());
					map.addv("ti_a_1_map", ti_a_1_map);
				}
//				map.addv("a_1", getTi(user.getId(), "a_1"));
			}else{//三件开心的事（每天都可以写，一共可以写3*7件）
				page = "jsp:jsp.manager.experiment.1_Three_good_things";
				stage ="e3_3_"+(dateParid-14);
			}
			mapTestInfoPojo.put("Savoring", getTestPojoInfo(15,21,1,"活在當下",startTime));
			mapTestInfoPojo.put("Three_good_things", getTestPojoInfo(15,21,3,"三件開心的事",startTime));
		}else if(dateParid >= 22 && dateParid <= 28){//TODO 增加行动计划
			
			ti = getTi(user.getId(), "e4_1_"+(dateParid-21));
			if (ti == null && dateParid != 28) {// 樂觀練習
				page = "jsp:jsp.manager.experiment.4_Optimism";
				stage ="e4_1_"+(dateParid-21);
			}else if (getTi(user.getId(), "a_3") == null) {
				page= "jsp:jsp.manager.experiment.action_3";
				stage = "a_3";
			}else{
				ti = getTi(user.getId(), "e4_3_"+(dateParid-21));
				if (ti == null) {// 活在當下練習
					page = "jsp:jsp.manager.experiment.3_Savoring";
					stage ="e4_3_"+(dateParid-21);
				}else{//三件开心的事（每天都可以写，一共可以写3*7件）
					page = "jsp:jsp.manager.experiment.1_Three_good_things";
					stage ="e4_4_"+(dateParid-21);
				}
			}
			mapTestInfoPojo.put("Optimism", getTestPojoInfo(22,27,1,"樂觀練習",startTime));
			mapTestInfoPojo.put("Savoring", getTestPojoInfo(22,28,3,"活在當下",startTime));
			mapTestInfoPojo.put("Three_good_things", getTestPojoInfo(22,28,4,"三件開心的事",startTime));
//			 page = "jsp:jsp.manager.experiment.4_Optimism";
//			 stage = "e4_1_"+(dateParid-21);
		/*}else if(dateParid == 28){
			ti = getTi(user.getId(), "e4_3_"+(dateParid-21));
			if (ti == null) {// 活在當下練習
				page = "jsp:jsp.manager.experiment.3_Savoring";
				stage ="e4_3_"+(dateParid-21);
			}else{//三件开心的事（每天都可以写，一共可以写3*7件）
				page = "jsp:jsp.manager.experiment.1_Three_good_things";
				stage ="e4_4_"+(dateParid-21);
			}
			mapTestInfoPojo.put("Optimism", getTestPojoInfo(22,27,1,"樂觀練習",startTime));
			mapTestInfoPojo.put("Savoring", getTestPojoInfo(22,28,3,"活在當下",startTime));
			mapTestInfoPojo.put("Three_good_things", getTestPojoInfo(22,28,4,"三件開心的事",startTime));*/
		}
		//如果当天的已经完成了，跳转到已经完成的页面中去
		if (getTi(user.getId(), stage) != null) {
			page= "jsp:jsp.manager.experiment.finish";
		}
		
		//判断TestPojo状态
		List<TestInfo> listTi = dao.query(TestInfo.class, Cnd.where("userId", "=", user.getId()),null,FieldMatcher.simple("stage"));
		Set<String> setStage = new HashSet<>();
		if (listTi != null) {
			for (TestInfo testInfo : listTi) {
				setStage.add(testInfo.getStage());
			}
		}
		if (mapTestInfoPojo.values() != null) {
			for (List<TestPojo> lsitTestPojo : mapTestInfoPojo.values()) {
				setTestPojoStatus(lsitTestPojo, user, setStage);
			}
		}
		map.addv("mapTestInfoPojo", mapTestInfoPojo);
		map.put("page", page);
		map.put("stage", stage);
		map.put("dateParid", dateParid);
		map.put("stageParid", String.valueOf((dateParid - 1) / 7));
		map.put("date", CommonUtils.getDate(startTime, dateParid));
		map.put("test_first", CommonUtils.getDateWithOutYear(startTime, 1)+"-"+CommonUtils.getDateWithOutYear(startTime, 7));
		map.put("test_second", CommonUtils.getDateWithOutYear(startTime, 8)+"-"+CommonUtils.getDateWithOutYear(startTime, 14));
		map.put("test_third", CommonUtils.getDateWithOutYear(startTime, 15)+"-"+CommonUtils.getDateWithOutYear(startTime, 21));
		map.put("test_fourth", CommonUtils.getDateWithOutYear(startTime, 22)+"-"+CommonUtils.getDateWithOutYear(startTime, 28));
		return map;
	}

	/**根据开始·结束时间，得到对应的TestPojo信息*/
	private List<TestPojo> getTestPojoInfo(int start,int end,int stage,String info ,Date startTime) {
		List<TestPojo>  list = new ArrayList<>();
		TestPojo tp = null;
		for (int i = start; i <= end; i++) {
			tp = new TestPojo();
			tp.setDate(CommonUtils.getDate(startTime, i));//格式是yyyy-MM-dd 便于时间比较，所以为了显示还需要进行格式的修改
			tp.setDateShort(CommonUtils.getDateWithOutYear(startTime, i));//格式是dd/MM ，便于页面显示查看
			tp.setInfo(info);//"三件開心的事"
			tp.setStage(experiment_get_stage(i,stage));
			tp.setDay(CommonUtils.getDateByInt(i - start + 1));
			list.add(tp);
		}
		return list;
	}
	
	/**TestPojo是否完成的状态更新到List里面去*/
	private void setTestPojoStatus(List<TestPojo> list,User user,Set<String> setStage) {
		String now = CommonUtils.getDate(user.getStartTime(), user.getStageTemp());//TODO 之后需要修改的
		for (TestPojo testPojo : list) {
//			log.info("testPojo.getDate().compareTo(now) = "+testPojo.getDate()+"——"+(now)+"—"+testPojo.getDate().compareTo(now));
			if (setStage.contains(testPojo.getStage())) {
				testPojo.setDone(1);
			}else if (!setStage.contains(testPojo.getStage())
					&& testPojo.getDate().compareTo(now) < 0
					) {
					testPojo.setDone(2);
			}else{
				testPojo.setDone(0);
			}
		}
	}
	

	 /**根据用户的状态，返回对应的页面，所有的入口都是这一个*/
	public String experiment_today(User user, ViewModel model) {
		if (user == null) {
			return "redirect:/land/index";
		}
		Date startTime = user.getStartTime();
		startTime = DateUtil.beginOfDay(startTime);//把2018-10-21 11:57:14变成 2018-10-21 00:00:00
		Date now = DateUtil.beginOfDay(new Date());//把今天的日期改成零点的
		//long dateParid = DateUtil.between(startTime, now, DateUnit.DAY); TODO 先改成测试的部分，走流程的那些
		int dateParid = dao.fetch(User.class, user.getId()).getStageTemp();//需要从数据库中取出来
		Map<String, Object> map =  getPageExperiment((int)dateParid, user);
		model.setAll(map);
		
		return map.get("page").toString();
	}
	
	public String control_today(User user, ViewModel model) {
		// TODO Auto-generated method stub
		return null;
	}


	/**参照组对应的页面信息*/
	private Map<String,Object> getPageControl(int dateParid,User user){
		Map<String,Object> map = new HashMap<>();
		if (dateParid >= 1 && dateParid <= 7) {//三件开心的事（每天都可以写，一共可以写3*7件）
			//会跳转到对应的那天去
			map.put("page", "/phoenix_test/land/control/c1_1/1");
		}else if(dateParid >= 8 && dateParid <= 14){
			map.put("page", "/phoenix_test/land/control/c2_1/1");
		}else if(dateParid >= 15 && dateParid <= 21){
			map.put("page", "/phoenix_test/land/control/c3_1/1");
		}else if(dateParid >= 22 && dateParid <= 28){
			map.put("page", "/phoenix_test/land/control/c4_1/1");
		}
		return map;
	}
	
	public TestInfo getTi(long userId,String stage){
		return dao.fetch(TestInfo.class,Cnd.where("userId", "=", userId).and("stage", "=", stage));
	}

	public void updateStageTemp(long userId){
		dao.update(User.class, Chain.makeSpecial("stageTemp", "+1"), Cnd.where("id", "=", userId));
	}
	

	public NutMap t0_choose(Long userId, String type) {
		User user = new User();
		user.setId(userId);
		user.setType(type);
		user.setStartTime(new Date());
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


	public NutMap experiment_index(User user) {
		NutMap mapDate = new NutMap();
		//1-7天
//		Date startTime = DateUtil.beginOfDay(user.getStartTime());
		Date startTime = user.getStartTime();
		/*mapDate.put("e1_1",CommonUtils.getDate(startTime, 1)+"-"+CommonUtils.getDate(startTime, 7));
		mapDate.put("e2_1_1",CommonUtils.getDate(startTime, 8)+"-"+CommonUtils.getDate(startTime, 14));
		mapDate.put("e2_3",CommonUtils.getDate(startTime, 8)+"-"+CommonUtils.getDate(startTime, 14));
		mapDate.put("e3_1",CommonUtils.getDate(startTime, 15)+"-"+CommonUtils.getDate(startTime, 21));
		mapDate.put("e4_1",CommonUtils.getDate(startTime, 22)+"-"+CommonUtils.getDate(startTime, 27));
		mapDate.put("e4_3",CommonUtils.getDate(startTime, 28));*/
		
		List<TestInfo> listTi = dao.query(TestInfo.class, Cnd.where("userId", "=", user.getId()),null,FieldMatcher.simple("stage"));
		Set<String> setStage = new HashSet<>();
		if (listTi != null) {
			for (TestInfo testInfo : listTi) {
				setStage.add(testInfo.getStage());
			}
		}
		List<TestPojo> list = new LinkedList<>();
		TestPojo tp = null;
		for (int i = 1; i < 29; i++) {//4个星期的数据
			//几个特殊需要增加的
			if (i >= 1 && i <= 7) {
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("三件開心的事");
				tp.setDay(CommonUtils.getDateByInt(i));
				tp.setStage(experiment_get_stage(i,1));
				list.add(tp);
			}else if (i == 8 ) {
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("感謝信");
				tp.setDay(CommonUtils.getDateByInt(i-7));
				tp.setStage(experiment_get_stage(i,1));
				list.add(tp);
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("三件開心的事");
				tp.setDay(CommonUtils.getDateByInt(i-7));
				tp.setStage(experiment_get_stage(i,3));
				list.add(tp);
			}else if (i > 8 && i <= 14) {
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("三件開心的事");
				tp.setDay(CommonUtils.getDateByInt(i-7));
				tp.setStage(experiment_get_stage(i,3));
				list.add(tp);
			}else if (i >= 15 && i <= 21) {
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("活在當下練習");
				tp.setDay(CommonUtils.getDateByInt(i-14));
				tp.setStage(experiment_get_stage(i,1));
				list.add(tp);
				
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("三件開心的事");
				tp.setDay(CommonUtils.getDateByInt(i-14));
				tp.setStage(experiment_get_stage(i,3));
				list.add(tp);
				
			}else if (i >= 22 && i <= 27) {
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("樂觀練習");
				tp.setDay(CommonUtils.getDateByInt(i-21));
				tp.setStage(experiment_get_stage(i,1));
				list.add(tp);
				
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("活在當下練習");
				tp.setDay(CommonUtils.getDateByInt(i-21));
				tp.setStage(experiment_get_stage(i,3));
				list.add(tp);
				
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("三件開心的事");
				tp.setDay(CommonUtils.getDateByInt(i-21));
				tp.setStage(experiment_get_stage(i,4));
				list.add(tp);
				
			}else if (i == 28) {
				
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("活在當下練習");
				tp.setDay(CommonUtils.getDateByInt(i-21));
				tp.setStage(experiment_get_stage(i,3));
				list.add(tp);
				
				tp = new TestPojo();
				tp.setDate(CommonUtils.getDate(startTime, i));
				tp.setInfo("三件開心的事");
				tp.setDay(CommonUtils.getDateByInt(i-21));
				tp.setStage(experiment_get_stage(i,4));
				list.add(tp);
				
			}
			
//			tp = new TestPojo();
//			tp.setDate(CommonUtils.getDate(startTime, i));
//			tp.setInfo("三件開心的事");
//			tp.setStage(experiment_get_stage(i));
//			
//			list.add(tp);
		}
		//是否完成，需要处理一下
//		String now = CommonUtils.getDate(new Date(), 0);
		//TODO 测试的时候修改的数据信息
		String now = CommonUtils.getDate(user.getStartTime(), user.getStageTemp());
		for (TestPojo testPojo : list) {
//			log.info("testPojo.getDate().compareTo(now) = "+testPojo.getDate()+"——————————————————"+(now)+"——————————————————"+testPojo.getDate().compareTo(now));
			if (setStage.contains(testPojo.getStage())) {
				testPojo.setDone(1);
			}else if (!setStage.contains(testPojo.getStage())
					&& testPojo.getDate().compareTo(now) < 0
					) {
					testPojo.setDone(2);
			}else{
				testPojo.setDone(0);
			}
		}
		
		
		mapDate.addv("list", list);
		return mapDate;
	}
	
	private String experiment_get_stage(int dateParid,int stageParid){
		String stage = null;
		if (dateParid >= 1 && dateParid <= 7) {//三件开心的事（每天都可以写，一共可以写3*7件）
			stage ="e1_"+stageParid+"_"+dateParid;
		}else if(dateParid >= 8 && dateParid <= 14){
			stage = "e2_"+stageParid+"_"+(dateParid-7);
		}else if(dateParid >= 15 && dateParid <= 21){
			 stage ="e3_"+stageParid+"_"+(dateParid-14);
		}else if(dateParid >= 22 && dateParid <= 28){
			 stage = "e4_"+stageParid+"_"+(dateParid-21);
//		}else if(dateParid == 28){
//			 stage =  "e4_"+stageParid+"_"+(dateParid-21);
		}
		return stage;
	}
	
	private String getFilePath(String filePath){
		if (filePath == null ) {
			return null;
		}
		return  File.separator.concat(filePath.substring(filePath.indexOf("phoenix_test")));
	}


	public NutMap experiment_action_post(TargetPojo tp, User user) {
		log.infof("tp= %s ",Json.toJson(tp));
		TestInfo ti = new TestInfo();
		ti.setCreateTime(new Date());
		ti.setStage(tp.getStage());
		ti.setText(Json.toJson(tp,JsonFormat.compact()));
		ti.setUserId(user.getId());
		return testInfoService.addOrUpdate(ti, user);
	}


	public void notice_ok(User user) {
		User userUpdate = new User();
		userUpdate.setId(user.getId());
		userUpdate.setUpdateTime(new Date());
		userUpdate.setIsNotice(1);
		userUpdate.setStartTime(new Date());
		dao.updateIgnoreNull(userUpdate);
	}
	
}
