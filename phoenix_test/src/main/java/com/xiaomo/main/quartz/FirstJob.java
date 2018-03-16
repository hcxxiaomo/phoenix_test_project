package com.xiaomo.main.quartz;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.xiaoleilu.hutool.date.DateUtil;

@IocBean
public class FirstJob  implements Job{
	
	 private static final Log log = Logs.get();


	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		log.errorf("Hello quzrtz  : %s", DateUtil.now());
	}

}
