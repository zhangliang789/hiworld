package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Customerextendedattributes implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalmineName")
    private String coalMineName;
    @JsonProperty("frameworkID")
    private String frameWorkID;
    @JsonProperty("classID")
    private Integer classID;
    @JsonProperty("classpropertyID")
    private Integer classPropertyID;
    @JsonProperty("classpropertyDataType")
    private String classPropertyDataType;
    @JsonProperty("classpropertyName")
    private String classpropertyName;
    @JsonProperty("classpropertyTitle")
    private String classPropertyTitle;
    @JsonProperty("classpropertyValue")
    private String classPropertyValue;
    @JsonProperty("systemAtrr")
    private boolean systemAtrr;
    @JsonProperty("canBeShow")
    private boolean canBeShow;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;

    //无参构造方法
    public Customerextendedattributes() {
    }

    //带参构造方法


    public Customerextendedattributes(String coalMineName, String frameWorkID, Integer classID, Integer classPropertyID, String classPropertyDataType, String classpropertyName, String classPropertyTitle, String classPropertyValue) {
        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.classID = classID;
        this.classPropertyID = classPropertyID;
        this.classPropertyDataType = classPropertyDataType;
        this.classpropertyName = classpropertyName;
        this.classPropertyTitle = classPropertyTitle;
        this.classPropertyValue = classPropertyValue;
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
    public Integer getClassPropertyID() {
        return this.classPropertyID;
    }

    @JsonIgnore
    public void setClassPropertyID(Integer classPropertyID) {
        this.classPropertyID = classPropertyID;
    }

    @JsonIgnore
    public String getClassPropertyDataType() {
        return this.classPropertyDataType;
    }

    @JsonIgnore
    public void setClassPropertyDataType(String classPropertyDataType) {
        this.classPropertyDataType = classPropertyDataType;
    }

    @JsonIgnore
    public String getClasspropertyName() {
        return this.classpropertyName;
    }

    @JsonIgnore
    public void setClasspropertyName(String classpropertyName) {
        this.classpropertyName = classpropertyName;
    }

    @JsonIgnore
    public String getClassPropertyTitle() {
        return this.classPropertyTitle;
    }

    @JsonIgnore
    public void setClassPropertyTitle(String classPropertyTitle) {
        this.classPropertyTitle = classPropertyTitle;
    }

    @JsonIgnore
    public String getClassPropertyValue() {
        return this.classPropertyValue;
    }

    @JsonIgnore
    public void setClassPropertyValue(String classPropertyValue) {
        this.classPropertyValue = classPropertyValue;
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
    public String getCoalMineName() {
        return coalMineName;
    }

    @JsonIgnore
    public void setCoalMineName(String coalMineName) {
        this.coalMineName = coalMineName;
    }

    @JsonIgnore
    public String getFrameWorkID() {
        return frameWorkID;
    }

    @JsonIgnore
    public void setFrameWorkID(String frameWorkID) {
        this.frameWorkID = frameWorkID;
    }

    @JsonIgnore
    public boolean isSystemAtrr() {
        return systemAtrr;
    }

    @JsonIgnore
    public void setSystemAtrr(boolean systemAtrr) {
        this.systemAtrr = systemAtrr;
    }

    @JsonIgnore
    public boolean isCanBeShow() {
        return canBeShow;
    }

    @JsonIgnore
    public void setCanBeShow(boolean canBeShow) {
        this.canBeShow = canBeShow;
    }
}