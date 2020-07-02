package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.List;

public class Customerextendedclass implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("classID")
    private Integer classID;
    @JsonProperty("className")
    private String className;
    @JsonProperty("classfullName")
    private String classFullName;
    @JsonProperty("coalmineName")
    private String coalMineName;
    @JsonProperty("frameworkID")
    private String frameWorkID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("classDescription")
    private String classDescription;
    @JsonProperty("mAttributes")
    private List<Customerextendedattributes> mAttributes;

    //无参构造方法
    public Customerextendedclass() {
    }

    //带参构造方法
    public Customerextendedclass(Integer classID, String className, String classFullName, String coalMineName, String frameWorkID) {

        this.classID = classID;
        this.className = className;
        this.classFullName = classFullName;
        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getClassID() {
        return this.classID;
    }

    @JsonIgnore
    public void setClassID(Integer classID) {
        this.classID = classID;
    }

    @JsonIgnore
    public String getClassName() {
        return this.className;
    }

    @JsonIgnore
    public void setClassName(String className) {
        this.className = className;
    }

    @JsonIgnore
    public String getClassFullName() {
        return this.classFullName;
    }

    @JsonIgnore
    public void setClassFullName(String classFullName) {
        this.classFullName = classFullName;
    }

    @JsonIgnore
    public String getCoalMineName() {
        return this.coalMineName;
    }

    @JsonIgnore
    public void setCoalMineName(String coalMineName) {
        this.coalMineName = coalMineName;
    }

    @JsonIgnore
    public String getFrameWorkID() {
        return this.frameWorkID;
    }

    @JsonIgnore
    public void setFrameWorkID(String frameWorkID) {
        this.frameWorkID = frameWorkID;
    }

    @JsonIgnore
    public Integer getPagesize() {
        return pagesize;
    }

    @JsonIgnore
    public void setPagesize(Integer pagesize) {
        this.pagesize = pagesize;
    }

    @JsonIgnore
    public Integer getPage() {
        return page;
    }

    @JsonIgnore
    public void setPage(Integer page) {
        this.page = page;
    }

    @JsonIgnore
    public List<Customerextendedattributes> getmAttributes() {
        return mAttributes;
    }

    @JsonIgnore
    public void setmAttributes(List<Customerextendedattributes> mAttributes) {
        this.mAttributes = mAttributes;
    }
    @JsonIgnore
    public String getClassDescription() {
        return classDescription;
    }
    @JsonIgnore
    public void setClassDescription(String classDescription) {
        this.classDescription = classDescription;
    }
}