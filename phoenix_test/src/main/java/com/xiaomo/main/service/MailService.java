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
	        String html = "<div><p>你好！<br/>"
	        		+ "謝謝你註冊Hehe Journals, 請在HeHe Journals網頁裏輸入以下驗證碼。<br/>"
	        		+ "<span>%s</span><br/>"
	        		+ "請在此網頁登入並輸入驗證碼: <a href='http://17.27.138.166:8080/phoenix_test/land/email_code?email=%e'> http://17.27.138.166:8080/phoenix_test/land/email_code?email=%e</a><br/>"
	        		+ "如有問題，請聯絡研究助理李小姐（電話：26475322）或電郵<a href='mailto:hehejournals@gmail.com'> hehejournals@gmail.com</a>。<br/>"
	        		+ "香港中文大學公共衞生及基層醫療學院<p/></div>";
	        
	        html = String.format(html,salt);
	        return send(email, "Validate Code from HeHe Journals", html);
	    }
}
