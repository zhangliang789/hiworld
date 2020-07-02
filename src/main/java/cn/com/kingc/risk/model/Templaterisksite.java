package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Templaterisksite implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("riskTemplateID")
    private Integer riskTemplateID;
    @JsonProperty("riskTemplateUUID")
    private String riskTemplateUUID;
    @JsonProperty("details")
    private Boolean details;
    @JsonProperty("extendedAttributesJsonString")
    private String extendedAttributesJsonString;
    @JsonProperty("fullNumber")
    private String fullNumber;
    @JsonProperty("managerID")
    private Integer managerID;
    @JsonProperty("managerName")
    private String managerName;
    @JsonProperty("managerUnitID")
    private Integer managerUnitID;
    @JsonProperty("managerUnitName")
    private String managerUnitName;
    @JsonProperty("name")
    private String name;
    @JsonProperty("number")
    private String number;
    @JsonProperty("parentID")
    private String parentID;
    @JsonProperty("parentNumber")
    private String parentNumber;
    @JsonProperty("riskAccident")
    private String riskAccident;
    @JsonProperty("riskColor")
    private String riskColor;
    @JsonProperty("riskControlCycle")
    private String riskControlCycle;
    @JsonProperty("riskControlTier")
    private String riskControlTier;
    @JsonProperty("riskDamageType")
    private String riskDamageType;
    @JsonProperty("riskDescription")
    private String riskDescription;
    @JsonProperty("riskFrequency")
    private String riskFrequency;
    @JsonProperty("riskLevel")
    private String riskLevel;
    @JsonProperty("riskValue")
    private Double riskValue;
    @JsonProperty("riskMajorType")
    private String riskMajorType;
    @JsonProperty("riskSiteType")
    private RiskSiteTypeEnum riskSiteType;
    @JsonProperty("riskSiteTypeContent")
    private String riskSiteTypeContent;
    @JsonProperty("riskSupervisor")
    private String riskSupervisor;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("mchildRiskSite")
    private List<Templaterisksite> mChildRiskSite = new ArrayList<Templaterisksite>();
    @JsonProperty("mhazards")
    private List<Templatehazard> mHazards = new ArrayList<Templatehazard>();
    @JsonProperty("mriskControlMeasure")
    private List<Templateriskcontrolmeasure> mRiskControlMeasure = new ArrayList<Templateriskcontrolmeasure>();


    //无参构造方法
    public Templaterisksite() {
    }

    //带参构造方法
    public Templaterisksite(String coalMineName, String frameWorkID, Integer riskTemplateID, String riskTemplateUUID, Boolean details, String extendedAttributesJsonString, String fullNumber, Integer managerID, String managerName, Integer managerUnitID, String managerUnitName, String name, String number, String parentID, String parentNumber, String riskAccident, String riskColor, String riskControlCycle, String riskControlTier, String riskDamageType, String riskDescription, String riskFrequency, String riskLevel, String riskMajorType, RiskSiteTypeEnum riskSiteType, String riskSiteTypeContent, String riskSupervisor) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.riskTemplateID = riskTemplateID;
        this.riskTemplateUUID = riskTemplateUUID;
        this.details = details;
        this.extendedAttributesJsonString = extendedAttributesJsonString;
        this.fullNumber = fullNumber;
        this.managerID = managerID;
        this.managerName = managerName;
        this.managerUnitID = managerUnitID;
        this.managerUnitName = managerUnitName;
        this.name = name;
        this.number = number;
        this.parentID = parentID;
        this.parentNumber = parentNumber;
        this.riskAccident = riskAccident;
        this.riskColor = riskColor;
        this.riskControlCycle = riskControlCycle;
        this.riskControlTier = riskControlTier;
        this.riskDamageType = riskDamageType;
        this.riskDescription = riskDescription;
        this.riskFrequency = riskFrequency;
        this.riskLevel = riskLevel;
        this.riskMajorType = riskMajorType;
        this.riskSiteType = riskSiteType;
        this.riskSiteTypeContent = riskSiteTypeContent;
        this.riskSupervisor = riskSupervisor;
    }


    //属性get set方法
    @JsonIgnore
    public List<Templaterisksite> getmChildRiskSite() {
        return mChildRiskSite;
    }

    @JsonIgnore
    public void setmChildRiskSite(List<Templaterisksite> mChildRiskSite) {
        this.mChildRiskSite = mChildRiskSite;
    }

    @JsonIgnore
    public List<Templateriskcontrolmeasure> getmRiskControlMeasure() {
        return mRiskControlMeasure;
    }

    @JsonIgnore
    public void setmRiskControlMeasure(List<Templateriskcontrolmeasure> mRiskControlMeasure) {
        this.mRiskControlMeasure = mRiskControlMeasure;
    }

    @JsonIgnore
    public List<Templatehazard> getmHazards() {
        return mHazards;
    }

    @JsonIgnore
    public void setmHazards(List<Templatehazard> mHazards) {
        this.mHazards = mHazards;
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
    public Integer getRiskTemplateID() {
        return this.riskTemplateID;
    }

    @JsonIgnore
    public void setRiskTemplateID(Integer riskTemplateID) {
        this.riskTemplateID = riskTemplateID;
    }

    @JsonIgnore
    public String getRiskTemplateUUID() {
        return this.riskTemplateUUID;
    }

    @JsonIgnore
    public void setRiskTemplateUUID(String riskTemplateUUID) {
        this.riskTemplateUUID = riskTemplateUUID;
    }

    @JsonIgnore
    public Boolean getDetails() {
        return this.details;
    }

    @JsonIgnore
    public void setDetails(Boolean details) {
        this.details = details;
    }

    @JsonIgnore
    public String getExtendedAttributesJsonString() {
        return this.extendedAttributesJsonString;
    }

    @JsonIgnore
    public void setExtendedAttributesJsonString(String extendedAttributesJsonString) {
        this.extendedAttributesJsonString = extendedAttributesJsonString;
    }

    @JsonIgnore
    public String getFullNumber() {
        return this.fullNumber;
    }

    @JsonIgnore
    public void setFullNumber(String fullNumber) {
        this.fullNumber = fullNumber;
    }

    @JsonIgnore
    public Integer getManagerID() {
        return this.managerID;
    }

    @JsonIgnore
    public void setManagerID(Integer managerID) {
        this.managerID = managerID;
    }

    @JsonIgnore
    public String getManagerName() {
        return this.managerName;
    }

    @JsonIgnore
    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    @JsonIgnore
    public Integer getManagerUnitID() {
        return this.managerUnitID;
    }

    @JsonIgnore
    public void setManagerUnitID(Integer managerUnitID) {
        this.managerUnitID = managerUnitID;
    }

    @JsonIgnore
    public String getManagerUnitName() {
        return this.managerUnitName;
    }

    @JsonIgnore
    public void setManagerUnitName(String managerUnitName) {
        this.managerUnitName = managerUnitName;
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
    public String getNumber() {
        return this.number;
    }

    @JsonIgnore
    public void setNumber(String number) {
        this.number = number;
    }

    @JsonIgnore
    public String getParentID() {
        return this.parentID;
    }

    @JsonIgnore
    public void setParentID(String parentID) {
        this.parentID = parentID;
    }

    @JsonIgnore
    public String getParentNumber() {
        return this.parentNumber;
    }

    @JsonIgnore
    public void setParentNumber(String parentNumber) {
        this.parentNumber = parentNumber;
    }

    @JsonIgnore
    public String getRiskAccident() {
        return this.riskAccident;
    }

    @JsonIgnore
    public void setRiskAccident(String riskAccident) {
        this.riskAccident = riskAccident;
    }

    @JsonIgnore
    public String getRiskColor() {
        return this.riskColor;
    }

    @JsonIgnore
    public void setRiskColor(String riskColor) {
        this.riskColor = riskColor;
    }

    @JsonIgnore
    public String getRiskControlCycle() {
        return this.riskControlCycle;
    }

    @JsonIgnore
    public void setRiskControlCycle(String riskControlCycle) {
        this.riskControlCycle = riskControlCycle;
    }

    @JsonIgnore
    public String getRiskControlTier() {
        return this.riskControlTier;
    }

    @JsonIgnore
    public void setRiskControlTier(String riskControlTier) {
        this.riskControlTier = riskControlTier;
    }

    @JsonIgnore
    public String getRiskDamageType() {
        return this.riskDamageType;
    }

    @JsonIgnore
    public void setRiskDamageType(String riskDamageType) {
        this.riskDamageType = riskDamageType;
    }

    @JsonIgnore
    public String getRiskDescription() {
        return this.riskDescription;
    }

    @JsonIgnore
    public void setRiskDescription(String riskDescription) {
        this.riskDescription = riskDescription;
    }

    @JsonIgnore
    public String getRiskFrequency() {
        return this.riskFrequency;
    }

    @JsonIgnore
    public void setRiskFrequency(String riskFrequency) {
        this.riskFrequency = riskFrequency;
    }

    @JsonIgnore
    public String getRiskLevel() {
        return this.riskLevel;
    }

    @JsonIgnore
    public void setRiskLevel(String riskLevel) {
        this.riskLevel = riskLevel;
    }

    @JsonIgnore
    public Double getRiskValue() {
        return riskValue;
    }

    @JsonIgnore
    public void setRiskValue(Double riskValue) {
        this.riskValue = riskValue;
    }

    @JsonIgnore
    public String getRiskMajorType() {
        return this.riskMajorType;
    }

    @JsonIgnore
    public void setRiskMajorType(String riskMajorType) {
        this.riskMajorType = riskMajorType;
    }

    @JsonIgnore
    public RiskSiteTypeEnum getRiskSiteType() {
        return this.riskSiteType;
    }

    @JsonIgnore
    public void setRiskSiteType(RiskSiteTypeEnum riskSiteType) {
        this.riskSiteType = riskSiteType;
    }

    @JsonIgnore
    public String getRiskSiteTypeContent() {
        return this.riskSiteTypeContent;
    }

    @JsonIgnore
    public void setRiskSiteTypeContent(String riskSiteTypeContent) {
        this.riskSiteTypeContent = riskSiteTypeContent;
    }

    @JsonIgnore
    public String getRiskSupervisor() {
        return this.riskSupervisor;
    }

    @JsonIgnore
    public void setRiskSupervisor(String riskSupervisor) {
        this.riskSupervisor = riskSupervisor;
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