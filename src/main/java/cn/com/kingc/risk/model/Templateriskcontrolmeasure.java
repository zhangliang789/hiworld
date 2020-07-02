package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Templateriskcontrolmeasure implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("measureID")
    private Integer measureID;
    @JsonProperty("measureContent")
    private String measureContent;
    @JsonProperty("measureName")
    private String measureName;
    @JsonProperty("measureType")
    private String measureType;
    @JsonProperty("measureURL")
    private String measureURL;
    @JsonProperty("measureUUID")
    private String measureUUID;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("riskTemplateID")
    private Integer riskTemplateID;
    @JsonProperty("hazardID")
    private Integer hazardID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;

    //无参构造方法
    public Templateriskcontrolmeasure() {
    }

    //带参构造方法
    public Templateriskcontrolmeasure(Integer measureID, String measureContent, String measureName, String measureType, String measureURL, String measureUUID, String frameWorkID, String coalMineName, Integer riskTemplateID, Integer hazardID) {

        this.measureID = measureID;
        this.measureContent = measureContent;
        this.measureName = measureName;
        this.measureType = measureType;
        this.measureURL = measureURL;
        this.measureUUID = measureUUID;
        this.frameWorkID = frameWorkID;
        this.coalMineName = coalMineName;
        this.riskTemplateID = riskTemplateID;
        this.hazardID = hazardID;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getMeasureID() {
        return this.measureID;
    }

    @JsonIgnore
    public void setMeasureID(Integer measureID) {
        this.measureID = measureID;
    }

    @JsonIgnore
    public String getMeasureContent() {
        return this.measureContent;
    }

    @JsonIgnore
    public void setMeasureContent(String measureContent) {
        this.measureContent = measureContent;
    }

    @JsonIgnore
    public String getMeasureName() {
        return this.measureName;
    }

    @JsonIgnore
    public void setMeasureName(String measureName) {
        this.measureName = measureName;
    }

    @JsonIgnore
    public String getMeasureType() {
        return this.measureType;
    }

    @JsonIgnore
    public void setMeasureType(String measureType) {
        this.measureType = measureType;
    }

    @JsonIgnore
    public String getMeasureURL() {
        return this.measureURL;
    }

    @JsonIgnore
    public void setMeasureURL(String measureURL) {
        this.measureURL = measureURL;
    }

    @JsonIgnore
    public String getMeasureUUID() {
        return this.measureUUID;
    }

    @JsonIgnore
    public void setMeasureUUID(String measureUUID) {
        this.measureUUID = measureUUID;
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
    public String getCoalMineName() {
        return this.coalMineName;
    }

    @JsonIgnore
    public void setCoalMineName(String coalMineName) {
        this.coalMineName = coalMineName;
    }

    @JsonIgnore
    public Integer getRiskTemplateID() {
        return this.riskTemplateID;
    }

    @JsonIgnore
    public void setRiskTemplateID(Integer riskTemplateID) {
        this.riskTemplateID = riskTemplateID;
    }

    @JsonIgnore
    public Integer getHazardID() {
        return this.hazardID;
    }

    @JsonIgnore
    public void setHazardID(Integer hazardID) {
        this.hazardID = hazardID;
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
}