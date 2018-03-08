package com.xiaomo.main.test;

import org.junit.Test;
import org.nutz.lang.random.R;

public class CommonTest {
	
	@Test
	public void testDESede(){
//		byte[] b = SecureUtil.generateKey(SymmetricAlgorithm.DESede.getValue()).getEncoded();
//		System.out.println(b);
//		System.out.println(new String(b,Charset.defaultCharset()));
		System.out.println(R.sg(6).next());
		System.out.println(R.sg(6).next());
	}
}
