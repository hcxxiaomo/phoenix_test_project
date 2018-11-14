package com.xiaomo.main.utils;

import java.util.Date;

import com.xiaoleilu.hutool.date.DatePattern;
import com.xiaoleilu.hutool.date.DateUtil;

public class CommonUtils {

	public static String getDate(Date date,int offset){
		return DateUtil.offsetDay(date, offset).toString(DatePattern.NORM_DATE_PATTERN);
	}
}
