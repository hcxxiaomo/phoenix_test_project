package com.xiaomo.main.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.nutz.dao.Cnd;
import org.nutz.dao.Condition;
import org.nutz.dao.Dao;
import org.nutz.dao.FieldFilter;
import org.nutz.dao.Sqls;
import org.nutz.dao.pager.Pager;
import org.nutz.dao.sql.Sql;
import org.nutz.dao.util.Daos;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.lang.random.R;
import org.nutz.lang.random.StringGenerator;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;

import com.xiaoleilu.hutool.crypto.SecureUtil;
import com.xiaoleilu.hutool.crypto.digest.DigestUtil;
import com.xiaoleilu.hutool.crypto.symmetric.SymmetricAlgorithm;
import com.xiaoleilu.hutool.crypto.symmetric.SymmetricCrypto;
import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaoleilu.hutool.util.RandomUtil;
import com.xiaoleilu.hutool.util.StrUtil;
import com.xiaomo.main.bean.User;
import com.xiaomo.main.pojo.EasyUiJsonObj;
import com.xiaomo.main.utils.Constants;

@IocBean
public class UserService {

	 private static final Log log = Logs.get();
	
	 @Inject
	 protected Dao dao;
	 
	 @Inject
	 protected MailService mailService;
	 
//	 protected byte[] emailKEY =  SecureUtil.generateKey(SymmetricAlgorithm.DESede.getValue()).getEncoded();
	 
	 private StringGenerator sg =  R.sg(6);
	 
	 protected SymmetricCrypto des = new SymmetricCrypto(SymmetricAlgorithm.DESede, SecureUtil.generateKey(SymmetricAlgorithm.DESede.getValue()).getEncoded());
	
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
		//User user =  (User) session.getAttribute(Constants.SESSION_ME.getValue());
		if (!Constants.SESSION_TYPE_SUPER.getValue().equals(user.getType())) {//不是超级管理员，就只查本人名下的所有管理员信息
			c.and(Cnd.exps("parentId", "=",user.getUserId()));
			c.or(Cnd.exps("userId", "=",user.getUserId()));
		}
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
	 
	 
	 public NutMap userSave(User user,String absolutePaths,User loginUser){
		 //User loginUser =  (User) session.getAttribute(Constants.SESSION_ME.getValue());
		 boolean result = false;
		 String salt = RandomUtil.randomString(6);
		 Date date = DateUtil.date();
		 if (user.getUserId() == null) {//新增
			 if (StrUtil.isBlank(user.getPassword())) {
					return new NutMap().addv("errorMsg", "请输入用户密码！");
				}
			 //检查用户名是否重复
			 if (dao.fetch(User.class, Cnd.where("name", "=", user.getName())) != null) {
				 return new NutMap().addv("errorMsg", "用户名已存在，请修改用户名！");
			}
			 
			user.setParentId(loginUser.getUserId());
			user.setSalt(salt);
			user.setPassword(DigestUtil.md5Hex(user.getPassword().concat(salt)));
			user.setCreateTime(DateUtil.date());
			user.setUpdateTime(date);
			dao.insert(user);
			 if (user.getUserId() != null) {
				result = true;
			}
		 }else{
			 if (StrUtil.isNotBlank(user.getPassword())) {//如果密码不为空就更新密码
				 user.setPassword(DigestUtil.md5Hex(user.getPassword().concat(salt)));
				 user.setSalt(salt);
			}else{
				user.setPassword(null);
			}
			 user.setUpdateTime(date);
			 result = dao.updateIgnoreNull(user) > 0;
		 }
		 if (result ) {
			 return new NutMap().addv("success", "true");
		 }else{
			 return new NutMap().addv("errorMsg", "保存数据出错，请联系管理员！");
		 }
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
		ui.setUserId(0);
		ui.setName("-请选择-");
		list.add(ui);
		list.addAll(Daos.ext(dao, ff).query(User.class, null));
		return list;
	}

	public NutMap userChangePassword(User loginUser, String new_password) {
		User user = new User();
		 String salt = RandomUtil.randomString(6);
		 Date date = DateUtil.date();
		 user.setUserId(loginUser.getUserId());
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
	
	public NutMap sendEmail(String email, HttpServletRequest request){
		 NutMap re = new NutMap();
		//不需要链接，改成验证码那种的
		 
	       if (Strings.isBlank(email)) {
	            return re.setv("ok", false).setv("msg", "你还没有填邮箱啊!");
	        }
//	        String token = String.format("%s,%s",email, System.currentTimeMillis());
//	        token = des.encryptHex(token);
//	        String url = request.getRequestURL() + "?token=" + token;
	        String html = "<div>验证码为<br/>：<span style='color:red'>%s</span><p/>please copy the code <p/></div>";
	        html = String.format(html, sg.next());
	        try {
	            boolean ok = mailService.send(email, "XXX 验证邮件 by phoenix_test", html);
	            if (!ok) {
	                return re.setv("ok", false).setv("msg", "发送失败");
	            }
	        } catch (Throwable e) {
	            log.debug("发送邮件失败", e);
	            return re.setv("ok", false).setv("msg", "发送失败");
	        }
	        return re.setv("ok", true);
	}
}
