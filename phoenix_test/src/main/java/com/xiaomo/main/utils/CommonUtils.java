package com.xiaomo.main.utils;

import java.util.Date;

import com.xiaoleilu.hutool.date.DatePattern;
import com.xiaoleilu.hutool.date.DateUtil;

public class CommonUtils {

	public static String getDate(Date date,int offset){
		return DateUtil.offsetDay(date, offset).toString(DatePattern.NORM_DATE_PATTERN);
	}
	public static String getDateWithOutYear(Date date,int offset){
		return DateUtil.offsetDay(date, offset).toString("dd/MM");
	}
	
	public static  String getDateByInt(int parid) {
		String info = null;
		switch (parid) {
		case 1:
			info = "第一日";
			break;
		case 2:
			info = "第二日";
			break;
		case 3:
			info = "第三日";
			break;
		case 4:
			info = "第四日";
			break;
		case 5:
			info = "第五日";
			break;
		case 6:
			info = "第六日";
			break;
		case 7:
			info = "第七日";
			break;

		default:
			break;
		}
		return info;
	}

}
