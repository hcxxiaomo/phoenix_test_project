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
import com.xiaomo.main.bean.TestInfo;
import com.xiaomo.main.bean.User;
import com.xiaomo.main.pojo.EasyUiJsonObj;

public class TestInfoService extends BaseService<TestInfo>{

	 private static final Log log = Logs.get();

	@Override
	public NutMap addOrUpdate(TestInfo baseBean, User user) {
		NutMap nm =  super.addOrUpdate(baseBean, user);
		 
		 //TODO 测试的时候增加修改用户信息的部分
		if (baseBean.getStage().startsWith("e1_1_")
				||baseBean.getStage().startsWith("e2_3_")
				||baseBean.getStage().startsWith("e3_3_")
				||baseBean.getStage().startsWith("e4_4_")
				) {
			
			updateStageTemp(user.getId());
		}
			 return nm;
	}
	 
	 
	 
}
