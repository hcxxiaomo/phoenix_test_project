package com.xiaomo.main.module;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.adaptor.JsonAdaptor;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import com.xiaoleilu.hutool.lang.Validator;
import com.xiaoleilu.hutool.util.StrUtil;
import com.xiaomo.main.bean.User;
import com.xiaomo.main.pojo.EasyUiJsonObj;
import com.xiaomo.main.service.UserService;
import com.xiaomo.main.utils.Constants;

@IocBean
@At("/userInfo")
@Ok("json")
@Fail("http:500")
// @Filters(@By(type=CheckSession.class, args={"me", "/index"})) //
// 检查当前Session是否带me这个属性
public class UserInfoModule {

	private static final Log log = Logs.get();

	// @Inject
	// protected Dao dao;

	@Inject
	protected UserService userService;

	@At
	@Ok("json:{quoteName:true,locked:'password|salt', ignoreNull:true}")
	public EasyUiJsonObj<User> getInfoByPage(Integer page, Integer rows, String name, String type,
			HttpSession session) {
		if (page == null) {
			page = 1;
		}
		if (rows == null) {
			rows = 20;
		}
		User user = (User) session.getAttribute(Constants.SESSION_ME.getValue());
		return userService.getInfoByPage(page, rows, name, type, user);
	}

	// plInfoManager.jsp
	// @At
	// @Ok("jsp:jsp.manager.userInfoManager")
	public void goUserInfoManager() {
	}

	@At
	@Ok("jsp:jsp.manager.changePWManager")
	public void geChangePassword() {
	}

	@At
	@Ok("json:{quoteName:true, ignoreNull:true}")
	public NutMap changePassword(String new_password, HttpSession session) {
		log.infof("new_password = %s", new_password);
		// pi.setPoId(poId);
		// return new NutMap().addv("success", "true");
		if (StrUtil.isBlank(new_password)) {
			return new NutMap().addv("errorMsg", "密码为空，请重新输入！");
		}
		User loginUser = (User) session.getAttribute(Constants.SESSION_ME.getValue());
		return userService.userChangePassword(loginUser, new_password);
	}

	@At
	@Ok("json:{quoteName:true, ignoreNull:true}")
	public NutMap userInfoDelete(@Param("delIds") String delIds) {
		log.info(delIds);// id = 0 , ct = null ,ut = null
		// pi.setPoId(poId);
		// return new NutMap().addv("success", "true");
		return userService.userDelete(delIds);
	}

	@At
	public int count() {
		return userService.count();
	}

	@At
	@Ok(">>:/")
	public void logout(HttpSession session) {
		session.invalidate();
	}

	@At("/hello")
	@Ok("jsp:jsp.hello")
	public String doHello() {
		return "Hello Nutz";
	}

	/* 你的 HTTP 输入流就是一个 JSON 串 */
	@At("/json")
	@AdaptBy(type = JsonAdaptor.class)
	@Ok("raw")
	public String someFunc(User user) {
		log.info(user.toString());
		return "success";
	}

	@At("/jsonBack")
	@Ok("json:{quoteName:true, ignoreNull:true}")
	@Fail("http:500")
	public User getUser() {// 不能用String返回，需要使用Object来当成返回值
		User user = new User();
		user.setId(1008L);
		user.setName("name--ttsxt");
		;
		return user;
	}

	@At
	@Ok("json:compact")
	public List<User> getAllInfo() {
		return userService.getAllInfo();
	}
	/**发邮件*/
/*	@At
	@Ok("json:compact")
	public NutMap sendEmail(String email){
		 NutMap re = new NutMap();
			//不需要链接，改成验证码那种的
       if (Strings.isBlank(email)) {
            return re.setv("ok", false).setv("msg", "您沒有填寫郵箱");
        }
       email = StrUtil.trim(email);
       if (!Validator.isEmail(email)) {
    	   return re.setv("ok", false).setv("msg", "請輸入格式正確的郵箱");
       }
		return userService.sendEmail(email);
	}
	*//**注册*//*
	@At
	@Ok("json:compact")
	public NutMap register(String email,String validate_code,String password){
		log.infof("email = %s , validate_code = $s, password = $s", email, validate_code, password);
		NutMap re = new NutMap();
		if (Strings.isBlank(email)) {
			return re.setv("ok", false).setv("msg", "您沒有填寫郵箱");
		}
		email = StrUtil.trim(email);
		if (!Validator.isEmail(email)) {
			return re.setv("ok", false).setv("msg", "請輸入格式正確的郵箱");
		}
		if (Strings.isBlank(validate_code)) {
			return re.setv("ok", false).setv("msg", "您沒有填寫驗證碼");
		}
		if (Strings.isBlank(password)) {
			return re.setv("ok", false).setv("msg", "您沒有填寫密碼");
		}
//		return re.setv("ok",true);//Test
		return userService.register(email, validate_code, password);
	}
	*/
	 @At
	    public Object login(String username, String password, HttpSession session) {
		 log.infof("name = %s , password = %s", username , password);
			 session.removeAttribute(Constants.SESSION_ME.getValue());
			 session.removeAttribute(Constants.SESSION_TYPE.getValue());
//			 log.info(session.getId());
			 if (StrUtil.isBlank(username) || StrUtil.isBlank(password) ) {
	        	return false;
			}
			 User user = userService.login(username, password);
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
}
