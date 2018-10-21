package com.xiaomo.main.service;

import org.apache.commons.mail.HtmlEmail;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
@IocBean
public class MailService {
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
	    
	    public boolean send(String email,String salt){
	        String html = "<div>Validate Code：<br/><p><span style='color:red'>%s</span><p/>please copy the code<p/></div>";
	        
	        html = String.format(html,salt);
	        return send(email, "Validate Code from HeHe Journals", html);
	    }
}
