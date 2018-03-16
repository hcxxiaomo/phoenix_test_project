package com.xiaomo.main.module;

import java.util.Date;

import org.nutz.integration.quartz.QuartzJob;
import org.nutz.integration.quartz.QuartzManager;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.util.NutMap;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
import org.quartz.DateBuilder;
import org.quartz.DateBuilder.IntervalUnit;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.ScheduleBuilder;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.SimpleTrigger;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;

import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaomo.main.quartz.FirstJob;

@IocBean
@At("/quartz")
@Ok("json")
@Fail("http:500")
public class QuartzModule {
	
	@Inject
	private QuartzManager quartzManager;
	
	/**传入的Email和发送的时间*/
	 @At
	 @Ok("json")
	public NutMap add(String email ,String date){
		
		// 1、创建一个JobDetail实例，指定Quartz  
        JobDetail jobDetail = JobBuilder.newJob(FirstJob.class)  
        // 任务执行类  
                .withIdentity("job5_1", "jGroup5")  
                // 任务名，任务组  
                .build();
        //Date triggerStartTime = DateUtil.tomorrow();
       Trigger trigger =  TriggerBuilder.newTrigger()  
                .withIdentity("trigger5_1", "tGroup5")
                //.startAt(triggerStartTime)
                .withSchedule(SimpleScheduleBuilder.simpleSchedule()
                		.withIntervalInSeconds(1)
                		.withRepeatCount(0)
                		)
                .startAt(DateBuilder.futureDate(10, IntervalUnit.SECOND))
                .forJob(jobDetail)
                .build();  
        JobKey jobKey = new JobKey("sendEmail5","test5");
		QuartzJob qj = new QuartzJob(jobKey, trigger, jobDetail);
		quartzManager.add(qj);
		return new NutMap().addv("result", "ok");
	}

}
