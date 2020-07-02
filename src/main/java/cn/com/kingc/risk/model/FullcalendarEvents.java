package cn.com.kingc.risk.model;

import java.io.Serializable;
import java.util.List;

public class FullcalendarEvents implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4063880574276871222L;
    private int code;
    private List<Riskcontrolplanebymonthitem> data;
    private String desc;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public List<Riskcontrolplanebymonthitem> getData() {
		return data;
	}
	public void setData(List<Riskcontrolplanebymonthitem> data) {
		this.data = data;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	@Override
	public String toString() {
		return "FullcalendarEvents [code=" + code + ", data=" + data + ", desc=" + desc + "]";
	}
    
}
