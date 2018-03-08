package com.xiaomo.main.pojo;

import java.util.List;

public class BarPojo {
	List<String> categories;
	List<Integer> data;
	public List<String> getCategories() {
		return categories;
	}
	public void setCategories(List<String> categories) {
		this.categories = categories;
	}
	public List<Integer> getData() {
		return data;
	}
	public void setData(List<Integer> data) {
		this.data = data;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("PiePojo [categories=");
		builder.append(categories.get(0));
		builder.append(", data=");
		builder.append(data.get(0));
		builder.append("]");
		return builder.toString();
	}
	
	

}
