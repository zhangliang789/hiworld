package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Riskcontrolmeasure implements Serializable {
    

    /**
	 * 
	 */
	private static final long serialVersionUID = 7171226196940895435L;
	@JsonProperty("measureID")
    private Integer measureID;
    @JsonProperty("measureUUID")
    private String measureUUID;
    @JsonProperty("risksiteID")
    private Integer riskSiteID;
    @JsonProperty("hazardID")
    private Integer hazardID;
    @JsonProperty("measureContent")
    private String measureContent;
    @JsonProperty("measureName")
    private String measureName;
    @JsonProperty("measureType")
    private String measureType;
    @JsonProperty("measureURL")
    private String measureURL;
    @JsonProperty("measureCreateTime")
    private String measureCreateTime;
    @JsonProperty("frameworkID")
    private String frameWorkID;
    @JsonProperty("coalmineName")
    private String coalMineName;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("riskSiteFullNumber")
    private String riskSiteFullNumber;

    //无参构造方法
    public Riskcontrolmeasure() {
    }

    //带参构造方法
    public Riskcontrolmeasure(Integer measureID, String measureUUID, Integer riskSiteID, Integer hazardID, String measureContent, String measureName, String measureType, String measureURL, String frameWorkID, String coalMineName) {

        this.measureID = measureID;
        this.measureUUID = measureUUID;
        this.riskSiteID = riskSiteID;
        this.hazardID = hazardID;
        this.measureContent = measureContent;
        this.measureName = measureName;
        this.measureType = measureType;
        this.measureURL = measureURL;
        this.frameWorkID = frameWorkID;
        this.coalMineName = coalMineName;
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
    public String getMeasureUUID() {
        return this.measureUUID;
    }

    @JsonIgnore
    public void setMeasureUUID(String measureUUID) {
        this.measureUUID = measureUUID;
    }

    @JsonIgnore
    public Integer getRiskSiteID() {
        return this.riskSiteID;
    }

    @JsonIgnore
    public void setRiskSiteID(Integer riskSiteID) {
        this.riskSiteID = riskSiteID;
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
    public String getMeasureCreateTime() {
        return measureCreateTime;
    }
    @JsonIgnore
    public void setMeasureCreateTime(String measureCreateTime) {
        this.measureCreateTime = measureCreateTime;
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
    public String getRiskSiteFullNumber() {
        return riskSiteFullNumber;
    }

    @JsonIgnore
    public void setRiskSiteFullNumber(String riskSiteFullNumber) {
        this.riskSiteFullNumber = riskSiteFullNumber;
    }
}