package com.xiaomo.main.test;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.nutz.json.Json;
import org.nutz.lang.random.R;

import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaomo.main.utils.CommonUtils;

public class CommonTest {
	
	@Test
	public void testDESede(){
//		byte[] b = SecureUtil.generateKey(SymmetricAlgorithm.DESede.getValue()).getEncoded();
//		System.out.println(b);
//		System.out.println(new String(b,Charset.defaultCharset()));
		System.out.println(R.sg(6).next());
		System.out.println(R.sg(6).next());
	}
	
	@Test
	public void testDate(){
//		System.out.println(DateUtil.beginOfDay(new Date()));
		
		Map<String,String> mapDate = new HashMap<>();
		//1-7天
//		Date startTime = DateUtil.beginOfDay(user.getStartTime());
		Date startTime = new Date();
		mapDate.put("e1_1",CommonUtils.getDate(startTime, 1)+"-"+CommonUtils.getDate(startTime, 7));
		mapDate.put("e2_1_1",CommonUtils.getDate(startTime, 8)+"-"+CommonUtils.getDate(startTime, 14));
		mapDate.put("e2_3",CommonUtils.getDate(startTime, 8)+"-"+CommonUtils.getDate(startTime, 14));
		mapDate.put("e3_1",CommonUtils.getDate(startTime, 15)+"-"+CommonUtils.getDate(startTime, 21));
		mapDate.put("e4_1",CommonUtils.getDate(startTime, 22)+"-"+CommonUtils.getDate(startTime, 27));
		mapDate.put("e4_3",CommonUtils.getDate(startTime, 28));
		System.out.println(mapDate);
	}
	
	@Test
	public void testJson(){
		String str = "{\"9_a\":\"從不\"}";
		System.out.println(Json.fromJsonAsMap(String.class, str));
		
	}
	
	@Test
	public void testPath(){
		String filePath = "D:\\apache-tomcat-7.0.42\\wtpwebapps\\phoenix_test\\tmp\\00\\0\\0\\0\\0\\1.jpg";
		System.out.println(File.separator.concat(filePath.substring(filePath.indexOf("phoenix_test"))));
	}
	
}
