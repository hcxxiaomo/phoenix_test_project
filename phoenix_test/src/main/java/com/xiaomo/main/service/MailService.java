package com.xiaomo.main.service;

import org.apache.commons.mail.HtmlEmail;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;

import com.xiaoleilu.hutool.extra.mail.Mail;
import com.xiaomo.main.bean.MailValidate;

public class MailService extends BaseService<MailValidate>{
	   private static final Log log = Logs.get();

	    @Inject("refer:$ioc")
	    protected Ioc ioc;

	    public boolean send(String to, String subject, String html) {
	        try {
	            HtmlEmail email = ioc.get(HtmlEmail.class);
	            email.setSubject(subject);
	            email.setHtmlMsg(html);
	            email.addTo(to);
	            email.buildMimeMessage();
	            email.sendMimeMessage();
	            return true;
	        } catch (Throwable e) {
	            log.info("send email fail", e);
	            return false;
	        }
	    }
}
