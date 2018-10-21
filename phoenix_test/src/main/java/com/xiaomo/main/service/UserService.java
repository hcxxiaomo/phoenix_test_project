package com.xiaomo.main.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.nutz.dao.Cnd;
import org.nutz.dao.Condition;
import org.nutz.dao.Dao;
import org.nutz.dao.FieldFilter;
import org.nutz.dao.Sqls;
import org.nutz.dao.pager.Pager;
import org.nutz.dao.sql.Sql;
import org.nutz.dao.util.Daos;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.lang.random.R;
import org.nutz.lang.random.StringGenerator;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;

import com.xiaoleilu.hutool.crypto.digest.DigestUtil;
import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaoleilu.hutool.util.RandomUtil;
import com.xiaomo.main.bean.User;
import com.xiaomo.main.pojo.EasyUiJsonObj;

public class UserService extends BaseService<User>{

	 private static final Log log = Logs.get();
	
	 @Inject
	 protected Dao dao;
	 
	 @Inject
	 protected MailService mailService;
	 
//	 protected byte[] emailKEY =  SecureUtil.generateKey(SymmetricAlgorithm.DESede.getValue()).getEncoded();
	 
	 private StringGenerator sg =  R.sg(6);
	 
//	 protected SymmetricCrypto des = new SymmetricCrypto(SymmetricAlgorithm.DESede, SecureUtil.generateKey(SymmetricAlgorithm.DESede.getValue()).getEncoded());
	
	 public EasyUiJsonObj<User> getInfoByPage(Integer pageNumber,Integer pageSize
			 ,String name,String type
			 ,User user
			 ){
		 EasyUiJsonObj<User>  easyUiJsonObj = new EasyUiJsonObj<User>();
		 Pager page = dao.createPager(pageNumber, pageSize);
		 //List<SqlExpressionGroup> queryParam = new ArrayList<SqlExpressionGroup>();
		 /*if (StrUtil.isNotBlank(name)) {
			 queryParam.add(Cnd.exps("name", "LIKE", "%".concat(name).concat("%")));
		 }
		 if (StrUtil.isNotBlank(type)) {
			 queryParam.add(Cnd.exps("type", "=",type));
		 }*/
//		 queryParam.add(Cnd.exps("1", "=",1));
		 Cnd c = null;
		 Condition condition = null;
		 c =  Cnd.where(Cnd.exps("1", "=",1));
		/* if (queryParam.size() >= 1) {
			for (int i = 0; i < queryParam.size(); i++) {
				if (i == 0) {
					 c = Cnd.where(queryParam.get(i));
				}else{
					c.and(queryParam.get(i));
				}
			}*/
			condition = c.desc("id");
		/* }else{
			 condition =  Cnd.orderBy().desc("id");
		 }*/
		 
		 List<User> list = dao.query(User.class, condition ,page);
		 easyUiJsonObj.setTotal(dao.count(User.class,condition));
		 easyUiJsonObj.setRows(list);
		 return easyUiJsonObj;
	 }
	
	 public int count() {
	        return dao.count(User.class);
	    }
	 
	 public User login(String name, String password){
		 User user = dao.fetch(User.class, Cnd.where("name", "=", name));
		 if (user == null) {//用户名错误
			return null;
		 }
		 if (user.getPassword().equals(//密码正确(MD5)
				 DigestUtil.md5Hex(password.concat(user.getSalt())))
				 ) {
			return user;
		 }
		 return null;
	 }
	 
	 public NutMap userDelete(String delIds) {
	    	Sql sql = Sqls.create("delete from t_user where id in("+delIds+") ");
	    	sql = dao.execute(sql);
	    	sql = Sqls.create("delete from t_user_folder where masterId in("+delIds+") ");
	    	sql = dao.execute(sql);
	    	 return new NutMap().addv("success", "true");
		}

	public List<User> getAllInfo() {
		FieldFilter ff = FieldFilter.create(User.class, "^userId|name$");
		//需要增加一个所有人的数据信息
		List<User> list = new ArrayList<User>();
		User  ui = new User();
		ui.setId(0L);
		ui.setName("-请选择-");
		list.add(ui);
		list.addAll(Daos.ext(dao, ff).query(User.class, null));
		return list;
	}

	public NutMap userChangePassword(User loginUser, String new_password) {
		User user = new User();
		 String salt = RandomUtil.randomString(6);
		 Date date = DateUtil.date();
		 user.setId(loginUser.getId());
		 user.setPassword(DigestUtil.md5Hex(new_password.concat(salt)));
		 user.setSalt(salt);
		 user.setUpdateTime(date);
		 boolean result = dao.updateIgnoreNull(user) > 0;
		 if (result ) {
			 return new NutMap().addv("success", "true");
		 }else{
			 return new NutMap().addv("errorMsg", "修改密码出错，请联系管理员！");
		 }
	}
	
	/**email需要trim一下*/
	/*public NutMap sendEmail(String email){
		 NutMap re = new NutMap();
	       //检查Email是否已经注册过，如果注册过就不允许再注册，直接去登录
	       User u = dao.fetch(User.class,Cnd.where("name", "=", email));
	       if (u != null) {
	    	   return re.setv("ok", false).setv("msg", "该邮箱已经注册，请用该邮箱登录或者换其它邮箱注册!");
	       }
	       String validate = null;
	       MailValidate mv = null;
	       if (CacheData.cacheEmail.containsKey(email)) {//如果缓存中有先使用缓存中的，后面验证通过就可以删除缓存中的
	    	   validate = CacheData.cacheEmail.get(email);
	       }else{//如果缓存中没有，就从数据库是取值
	    	   mv = dao.fetch(MailValidate.class, email);
	    	   validate = ( mv == null ? sg.next() : mv.getValidate());
	    	   CacheData.cacheEmail.put(email, validate);
	       }
//	        String token = String.format("%s,%s",email, System.currentTimeMillis());
//	        token = des.encryptHex(token);
//	        String url = request.getRequestURL() + "?token=" + token;
	        String html = "<div>Validate Code：<br/><p><span style='color:red'>%s</span><p/>please copy the code<p/></div>";
	        
	        html = String.format(html,validate);
	        try {
	            boolean ok = mailService.send(email, "Validate Code from PhoenixTest", html);
	            if (!ok) {
	                return re.setv("ok", false).setv("msg", "发送失败，请检查邮箱是否正确。");
	            }else{
	            	if (mv == null) {//如果发送成功，而且没有对应的验证码记录
	            		mv = new MailValidate();
	            		mv.setEmail(email);
	            		mv.setValidate(validate);
	            		//保存到数据库中，保证每次发的时候，都是原来的验证码
	            		dao.insertOrUpdate(mv);
					}
	            }
	        } catch (Throwable e) {
	            log.debug("发送邮件失败", e);
	            return re.setv("ok", false).setv("msg", "发送失败");
	        }
	        return re.setv("ok", true);
	}
	*//**注册的时候还是要校验一下*//*
	public NutMap register(String email,String validate_code,String password){
		NutMap re = new NutMap();
		String validate = null;
		MailValidate mv = null;
			validate = CacheData.cacheEmail.get(email);
		
		if(validate == null){//如果缓存中没有，就从数据库是取值
			mv = dao.fetch(MailValidate.class, email);
			validate = mv.getValidate();
		}
		
		if (!StrUtil.equals(validate_code, validate)) {
			return re.setv("ok", false).setv("msg", "验证码错误，请进入邮箱核对验证码，或者重新获取验证码。");
		}
		
		User user = new User();
		 String salt = RandomUtil.randomString(6);
		 Date date = DateUtil.date();
		 user.setPassword(DigestUtil.md5Hex(password.concat(salt)));
		 user.setSalt(salt);
		 user.setUpdateTime(date);
		 user.setCreateTime(date);
		 user.setType(Constants.SESSION_TYPE_USER.getValue());
		 user.setIsClose(0);
		 user.setName(email);
		 dao.insert(user);
		 
		 if (user.getId() != null) {
			 //把原来缓存和数据库里面的validate都删除了
			 CacheData.cacheEmail.remove(email);
			 dao.delete(MailValidate.class,email);
			 return re.setv("ok", true);
		}else{
			return re.setv("ok", false).setv("msg", "保存用户失败，请稍后重试");
		}
	}*/
}
