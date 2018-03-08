package com.xiaomo.main.pojo;

import java.util.Collection;
import java.util.List;

public class EasyUiJsonObj<T> {

	private Collection<T> rows;
	private Integer total;
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Collection<T> getRows() {
		return rows;
	}
	public void setRows(Collection<T> rows) {
		this.rows = rows;
	}
	
}
