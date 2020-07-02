package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Riskcontrolanalyze implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalmineName")
    private String coalMineName;
    @JsonProperty("frameeorkID")
    private String frameWorkID;
    @JsonProperty("createrID")
    private Integer createrID;
    @JsonProperty("createrName")
    private String createrName;
    @JsonProperty("createTime")
    private String createTime;
    @JsonProperty("createunitID")
    private Integer createUnitID;
    @JsonProperty("createunitName")
    private String createUnitName;
    @JsonProperty("manalyzeID")
    private Integer mAnalyzeID;
    @JsonProperty("manalyzeUUID")
    private String mAnalyzeUUID;
    @JsonProperty("majorType")
    private String majorType;
    @JsonProperty("monthplanType")
    private String monthPlanType;
    @JsonProperty("name")
    private String name;
    @JsonProperty("reviews")
    private String reviews;
    @JsonProperty("status")
    private Boolean status;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("manalyzeItem")
    private List<Riskcontrolanalyzeitem> mAnalyzeItem = new ArrayList<>();
    @JsonProperty("attachID")
    private String attachID;
    @JsonProperty("attachName")
    private String attachName;
    @JsonProperty("attachTime")
    private String attachTime;
    @JsonProperty("monthPlaneID")
    private Integer monthPlaneID;
    @JsonProperty("monthPlanName")
    private String monthPlanName;
    @JsonProperty("frequency")
    private String frequency;

    @JsonProperty("description")
    private String description;



    //无参构造方法
    public Riskcontrolanalyze() {

    }

    //带参构造方法
    public Riskcontrolanalyze(String coalMineName, String frameWorkID, Integer createrID, String createrName, String createTime, Integer createUnitID, String createUnitName, Integer mAnalyzeID, String mAnalyzeUUID, String majorType, String monthPlanType, String name, String reviews, Boolean status,String frequency,String monthPlanName) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.createrID = createrID;
        this.createrName = createrName;
        this.createTime = createTime;
        this.createUnitID = createUnitID;
        this.createUnitName = createUnitName;
        this.mAnalyzeID = mAnalyzeID;
        this.mAnalyzeUUID = mAnalyzeUUID;
        this.majorType = majorType;
        this.monthPlanType = monthPlanType;
        this.name = name;
        this.reviews = reviews;
        this.status = status;
        this.frequency = frequency;
        this.monthPlanName = monthPlanName;
    }


    //属性get set方法

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
    public Integer getCreaterID() {
        return this.createrID;
    }

    @JsonIgnore
    public void setCreaterID(Integer createrID) {
        this.createrID = createrID;
    }

    @JsonIgnore
    public String getCreaterName() {
        return this.createrName;
    }

    @JsonIgnore
    public void setCreaterName(String createrName) {
        this.createrName = createrName;
    }

    @JsonIgnore
    public String getCreateTime() {
        return this.createTime;
    }

    @JsonIgnore
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    @JsonIgnore
    public Integer getCreateUnitID() {
        return this.createUnitID;
    }

    @JsonIgnore
    public void setCreateUnitID(Integer createUnitID) {
        this.createUnitID = createUnitID;
    }

    @JsonIgnore
    public String getCreateUnitName() {
        return this.createUnitName;
    }

    @JsonIgnore
    public void setCreateUnitName(String createUnitName) {
        this.createUnitName = createUnitName;
    }

    @JsonIgnore
    public Integer getMAnalyzeID() {
        return this.mAnalyzeID;
    }

    @JsonIgnore
    public void setMAnalyzeID(Integer mAnalyzeID) {
        this.mAnalyzeID = mAnalyzeID;
    }

    @JsonIgnore
    public String getMAnalyzeUUID() {
        return this.mAnalyzeUUID;
    }

    @JsonIgnore
    public void setMAnalyzeUUID(String mAnalyzeUUID) {
        this.mAnalyzeUUID = mAnalyzeUUID;
    }

    @JsonIgnore
    public String getMajorType() {
        return this.majorType;
    }

    @JsonIgnore
    public void setMajorType(String majorType) {
        this.majorType = majorType;
    }

    @JsonIgnore
    public String getMonthPlanType() {
        return this.monthPlanType;
    }

    @JsonIgnore
    public void setMonthPlanType(String monthPlanType) {
        this.monthPlanType = monthPlanType;
    }

    @JsonIgnore
    public String getName() {
        return this.name;
    }

    @JsonIgnore
    public void setName(String name) {
        this.name = name;
    }

    @JsonIgnore
    public String getReviews() {
        return this.reviews;
    }

    @JsonIgnore
    public void setReviews(String reviews) {
        this.reviews = reviews;
    }

    @JsonIgnore
    public Boolean getStatus() {
        return this.status;
    }

    @JsonIgnore
    public void setStatus(Boolean status) {
        this.status = status;
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
    public String getmAnalyzeUUID() {
        return mAnalyzeUUID;
    }

    @JsonIgnore
    public void setmAnalyzeUUID(String mAnalyzeUUID) {
        this.mAnalyzeUUID = mAnalyzeUUID;
    }

    @JsonIgnore
    public List<Riskcontrolanalyzeitem> getmAnalyzeItem() {
        return mAnalyzeItem;
    }

    @JsonIgnore
    public void setmAnalyzeItem(List<Riskcontrolanalyzeitem> mAnalyzeItem) {
        this.mAnalyzeItem = mAnalyzeItem;
    }

    @JsonIgnore
    public String getAttachID() {
        return attachID;
    }

    @JsonIgnore
    public void setAttachID(String attachID) {
        this.attachID = attachID;
    }

    @JsonIgnore
    public String getAttachName() {
        return attachName;
    }

    @JsonIgnore
    public void setAttachName(String attachName) {
        this.attachName = attachName;
    }

    @JsonIgnore
    public String getAttachTime() {
        return attachTime;
    }

    @JsonIgnore
    public void setAttachTime(String attachTime) {
        this.attachTime = attachTime;
    }

    @JsonIgnore
    public Integer getMonthPlaneID() {
        return monthPlaneID;
    }
    @JsonIgnore
    public void setMonthPlaneID(Integer monthPlaneID) {
        this.monthPlaneID = monthPlaneID;
    }
    @JsonIgnore
    public String getFrequency() {
        return frequency;
    }
    @JsonIgnore
    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }
    @JsonIgnore
    public String getMonthPlanName() {
        return monthPlanName;
    }
    @JsonIgnore
    public void setMonthPlanName(String monthPlanName) {
        this.monthPlanName = monthPlanName;
    }
    @JsonIgnore
    public String getDescription() {
        return description;
    }
    @JsonIgnore
    public void setDescription(String description) {
        this.description = description;
    }
}