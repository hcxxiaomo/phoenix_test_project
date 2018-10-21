package com.xiaomo.main.test;

import java.util.Date;

import org.junit.Test;
import org.nutz.json.Json;
import org.nutz.lang.random.R;

import com.xiaoleilu.hutool.date.DateUtil;

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
		System.out.println(DateUtil.beginOfDay(new Date()));
	}
	
	@Test
	public void testJson(){
		String str = "{\"9_a\":\"從不\"}";
		System.out.println(Json.fromJsonAsMap(String.class, str));
		
	}
}
