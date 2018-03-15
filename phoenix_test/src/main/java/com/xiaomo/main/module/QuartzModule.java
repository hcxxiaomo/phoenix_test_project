package com.xiaomo.main.module;

import org.nutz.integration.quartz.QuartzJob;
import org.nutz.integration.quartz.QuartzManager;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;

import com.xiaomo.main.quartz.FirstJob;

@IocBean
@At("/quartz")
@Ok("json")
@Fail("http:500")
public class QuartzModule {
	
//	@Inject
//	private QuartzManager quartzManager;
	/**传入的Email和发送的时间*/
	public void add(String email ,String date){
		/*
		// 1、创建一个JobDetail实例，指定Quartz  
        JobDetail jobDetail = JobBuilder.newJob(FirstJob.class)  
        // 任务执行类  
                .withIdentity("job1_1", "jGroup1")  
                // 任务名，任务组  
                .build();  
        Trigger trigger = TriggerBuilder.newTrigger()  
                .withIdentity("trigger1_1", "tGroup1").startNow()  
                .build();  
        JobKey jobKey = new JobKey("sendEmail","test1");
		QuartzJob qj = new QuartzJob(jobKey, trigger, jobDetail);
		quartzManager.add(qj);
		*/
	}

}
