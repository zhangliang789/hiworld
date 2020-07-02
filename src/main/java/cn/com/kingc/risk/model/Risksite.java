package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Risksite implements Serializable {
   

    /**
	 * 
	 */
	private static final long serialVersionUID = -6125657002162232595L;
	@JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("riskSiteUUID")
    private String riskSiteUUID;
    @JsonProperty("details")
    private Boolean details;
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
    @JsonProperty("riskColor")
    private String riskColor;
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
    @JsonProperty("riskTemplateID")
    private Integer riskTemplateID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("limitPeopleCount")
    private Integer limitPeopleCount;
    @JsonProperty("status")
    private Boolean status;
    @JsonProperty("mchildRiskSite")
    private List<Risksite> mChildRiskSite = new ArrayList<Risksite>();
    @JsonProperty("mhazards")
    private List<Riskhazard> mHazards = new ArrayList<Riskhazard>();
    @JsonProperty("mriskControlMeasure")
    private List<Riskcontrolmeasure> mRiskControlMeasure = new ArrayList<Riskcontrolmeasure>();
    @JsonProperty("extendedAttributesJson")
    private String extendedAttributesJson;
    @JsonProperty("extendedAttributesJsonString")
    private String extendedAttributesJsonString;
    @JsonProperty("showChild")
    private Boolean showChild;
    @JsonProperty("locationId")
    private String locationId;
    @JsonProperty("riskLevelSettingID")
    private Integer riskLevelSettingID;
    @JsonProperty("index")
    private Integer index=0;
    @JsonProperty("checkStatus")
    private String checkStatus;
    @JsonProperty("childRiskCount")
    private String childRiskCount;
    @JsonProperty("confirmDate")
    private String confirmDate;
    @JsonProperty("clearDate")
    private String clearDate;

    @JsonProperty("mRiskControlRange")
    private List<Riskhazardcontrolrange> mRiskControlRange = new ArrayList<>();

    @JsonIgnore
    public String getConfirmDate() {
        return confirmDate;
    }
    @JsonIgnore
    public void setConfirmDate(String confirmDate) {
        this.confirmDate = confirmDate;
    }
    @JsonIgnore
    public String getClearDate() {
        return clearDate;
    }
    @JsonIgnore
    public void setClearDate(String clearDate) {
        this.clearDate = clearDate;
    }

    @JsonIgnore
    public String getChildRiskCount() {
        return childRiskCount;
    }
    @JsonIgnore
    public void setChildRiskCount(String childRiskCount) {
        this.childRiskCount = childRiskCount;
    }

    @JsonIgnore
    public Integer getIndex() {
        return this.index;
    }
    @JsonIgnore
    public void setIndex(Integer index) {
        this.index = index;
    }
    @JsonIgnore
    public Boolean getShowChild() {
        return showChild;
    }
    @JsonIgnore
    public void setShowChild(Boolean showChild) {
        this.showChild = false;
    }

    //无参构造方法
    public Risksite() {
    }
    //带参构造方法


    public Risksite(String coalMineName, String frameWorkID, Integer riskSiteID, String riskSiteUUID, Boolean details, String fullNumber, Integer managerID, String managerName, Integer managerUnitID, String managerUnitName, String name, String number, String parentID, String parentNumber, String riskAccident, String riskControlCycle, String riskControlTier, String riskDamageType, String riskDescription, String riskFrequency, Double riskValue, String riskMajorType, RiskSiteTypeEnum riskSiteType, String riskSiteTypeContent, String riskSupervisor, Integer riskTemplateID, Integer limitPeopleCount, Boolean status, List<Risksite> mChildRiskSite, List<Riskhazard> mHazards, List<Riskcontrolmeasure> mRiskControlMeasure, String extendedAttributesJson, String extendedAttributesJsonString, Boolean showChild, String locationId, Integer riskLevelSettingID) {
        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.riskSiteID = riskSiteID;
        this.riskSiteUUID = riskSiteUUID;
        this.details = details;
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
        this.riskControlCycle = riskControlCycle;
        this.riskControlTier = riskControlTier;
        this.riskDamageType = riskDamageType;
        this.riskDescription = riskDescription;
        this.riskFrequency = riskFrequency;
        this.riskValue = riskValue;
        this.riskMajorType = riskMajorType;
        this.riskSiteType = riskSiteType;
        this.riskSiteTypeContent = riskSiteTypeContent;
        this.riskSupervisor = riskSupervisor;
        this.riskTemplateID = riskTemplateID;
        this.limitPeopleCount = limitPeopleCount;
        this.status = status;
        this.mChildRiskSite = mChildRiskSite;
        this.mHazards = mHazards;
        this.mRiskControlMeasure = mRiskControlMeasure;
        this.extendedAttributesJson = extendedAttributesJson;
        this.extendedAttributesJsonString = extendedAttributesJsonString;
        this.showChild = showChild;
        this.locationId = locationId;
        this.riskLevelSettingID = riskLevelSettingID;
    }

    @JsonIgnore
    public List<Riskhazardcontrolrange> getmRiskControlRange() {
        return mRiskControlRange;
    }

    @JsonIgnore
    public void setmRiskControlRange(List<Riskhazardcontrolrange> mRiskControlRange) {
        this.mRiskControlRange = mRiskControlRange;
    }

    //属性get set方法
    @JsonIgnore
    public String getCheckStatus() {
        return checkStatus;
    }
    @JsonIgnore
    public void setCheckStatus(String checkStatus) {
        this.checkStatus = checkStatus;
    }
    @JsonIgnore
    public String getExtendedAttributesJson() {
        return extendedAttributesJson;
    }
    @JsonIgnore
    public void setExtendedAttributesJson(String extendedAttributesJson) {
        this.extendedAttributesJson = extendedAttributesJson;
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
    public Integer getRiskSiteID() {
        return this.riskSiteID;
    }
    @JsonIgnore
    public void setRiskSiteID(Integer riskSiteID) {
        this.riskSiteID = riskSiteID;
    }
    @JsonIgnore
    public String getRiskSiteUUID() {
        return this.riskSiteUUID;
    }
    @JsonIgnore
    public void setRiskSiteUUID(String riskSiteUUID) {
        this.riskSiteUUID = riskSiteUUID;
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
    public Integer getRiskTemplateID() {
        return this.riskTemplateID;
    }
    @JsonIgnore
    public void setRiskTemplateID(Integer riskTemplateID) {
        this.riskTemplateID = riskTemplateID;
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
    public Boolean getStatus() {
        return status;
    }
    @JsonIgnore
    public void setStatus(Boolean status) {
        this.status = status;
    }
    @JsonIgnore
    public List<Risksite> getmChildRiskSite() {
        return mChildRiskSite;
    }
    @JsonIgnore
    public void setmChildRiskSite(List<Risksite> mChildRiskSite) {
        this.mChildRiskSite = mChildRiskSite;
    }
    @JsonIgnore
    public List<Riskhazard> getmHazards() {
        return mHazards;
    }
    @JsonIgnore
    public void setmHazards(List<Riskhazard> mHazards) {
        this.mHazards = mHazards;
    }
    @JsonIgnore
    public List<Riskcontrolmeasure> getmRiskControlMeasure() {
        return mRiskControlMeasure;
    }
    @JsonIgnore
    public void setmRiskControlMeasure(List<Riskcontrolmeasure> mRiskControlMeasure) {
        this.mRiskControlMeasure = mRiskControlMeasure;
    }
    @JsonIgnore
    public Integer getLimitPeopleCount() {
        return limitPeopleCount;
    }
    @JsonIgnore
    public void setLimitPeopleCount(Integer limitPeopleCount) {
        this.limitPeopleCount = limitPeopleCount;
    }
    @JsonIgnore
    public String getRiskColor() {
        return riskColor;
    }
    @JsonIgnore
    public void setRiskColor(String riskColor) {
        this.riskColor = riskColor;
    }
    @JsonIgnore
    public String getRiskLevel() {
        return riskLevel;
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
    public String getLocationId() {
        return locationId;
    }
    @JsonIgnore
    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    @JsonIgnore
    public Integer getRiskLevelSettingID() {
        return riskLevelSettingID;
    }
    @JsonIgnore
    public void setRiskLevelSettingID(Integer riskLevelSettingID) {
        this.riskLevelSettingID = riskLevelSettingID;
    }
}