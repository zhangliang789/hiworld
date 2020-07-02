package cn.com.kingc.risk.model;

import java.io.Serializable;

public class Event implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2493635560524504592L;
    private Integer id;
    private String title;
    private String start;
    private String className;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	@Override
	public String toString() {
		return "Event [id=" + id + ", title=" + title + ", start=" + start + ", className=" + className + "]";
	}
    
}
