package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Riskcontrolplanebymonthitem implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalmineName")
    private String coalMineName;
    @JsonProperty("frameworkID")
    private String frameWorkID;
    @JsonProperty("monthplaneID")
    private Integer monthPlaneID;
    @JsonProperty("itemID")
    private Integer itemID;
    @JsonProperty("itemUUID")
    private String itemUUID;
    @JsonProperty("itemcheckerID")
    private Integer itemCheckerID;
    @JsonProperty("itemcheckerName")
    private String itemCheckerName;
    @JsonProperty("itemunitID")
    private Integer itemUnitID;
    @JsonProperty("unitName")
    private String unitName;
    @JsonProperty("keyContent")
    private String keyContent;
    @JsonProperty("mriskSite")
    private Risksite mRiskSite;
    @JsonProperty("planStartDate")
    private String planStartDate;
    @JsonProperty("planEndDate")
    private String planEndDate;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("risksiteID")
    private Integer riskSiteID;
    @JsonProperty("riskHazardsCount")
    private Integer riskHazardsCount;
    @JsonProperty("controlMeasureCount")
    private Integer controlMeasureCount;
    @JsonProperty("monthPlanItemStatus")
    private Boolean monthPlanItemStatus;
    @JsonProperty("mUnits")
    private String[] mUnits;
    @JsonProperty("mChecks")
    private String[] mChecks;

    @JsonProperty("name")
    private String name;
    @JsonProperty("riskDamageType")
    private String riskDamageType;

    @JsonProperty("riskLevel")
    private String riskLevel;
    @JsonProperty("riskColor")
    private String riskColor;

    //无参构造方法
    public Riskcontrolplanebymonthitem() {
    }

    //带参构造方法
    public Riskcontrolplanebymonthitem(String coalMineName, String frameWorkID, Integer monthPlaneID, Integer itemID, String itemUUID, Integer itemCheckerID, String itemCheckerName, Integer itemUnitID, String unitName, String keyContent, Risksite riskSite) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.monthPlaneID = monthPlaneID;
        this.itemID = itemID;
        this.itemUUID = itemUUID;
        this.itemCheckerID = itemCheckerID;
        this.itemCheckerName = itemCheckerName;
        this.itemUnitID = itemUnitID;
        this.unitName = unitName;
        this.keyContent = keyContent;
        this.mRiskSite = riskSite;
    }


    //属性get set方法

    public String[] getmUnits() {
        return mUnits;
    }

    public void setmUnits(String[] mUnits) {
        this.mUnits = mUnits;
    }

    public String[] getmChecks() {
        return mChecks;
    }

    public void setmChecks(String[] mChecks) {
        this.mChecks = mChecks;
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
    public Integer getMonthPlaneID() {
        return this.monthPlaneID;
    }

    @JsonIgnore
    public void setMonthPlaneID(Integer monthPlaneID) {
        this.monthPlaneID = monthPlaneID;
    }

    @JsonIgnore
    public Integer getItemID() {
        return this.itemID;
    }

    @JsonIgnore
    public void setItemID(Integer itemID) {
        this.itemID = itemID;
    }

    @JsonIgnore
    public String getItemUUID() {
        return this.itemUUID;
    }

    @JsonIgnore
    public void setItemUUID(String itemUUID) {
        this.itemUUID = itemUUID;
    }

    @JsonIgnore
    public Integer getItemCheckerID() {
        return this.itemCheckerID;
    }

    @JsonIgnore
    public void setItemCheckerID(Integer itemCheckerID) {
        this.itemCheckerID = itemCheckerID;
    }

    @JsonIgnore
    public String getItemCheckerName() {
        return this.itemCheckerName;
    }

    @JsonIgnore
    public void setItemCheckerName(String itemCheckerName) {
        this.itemCheckerName = itemCheckerName;
    }

    @JsonIgnore
    public Integer getItemUnitID() {
        return this.itemUnitID;
    }

    @JsonIgnore
    public void setItemUnitID(Integer itemUnitID) {
        this.itemUnitID = itemUnitID;
    }

    @JsonIgnore
    public String getUnitName() {
        return this.unitName;
    }

    @JsonIgnore
    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    @JsonIgnore
    public String getKeyContent() {
        return this.keyContent;
    }

    @JsonIgnore
    public void setKeyContent(String keyContent) {
        this.keyContent = keyContent;
    }

    @JsonIgnore
    public Risksite getRiskSite() {
        return this.mRiskSite;
    }

    @JsonIgnore
    public void setRiskSiteID(Risksite riskSite) {
        this.mRiskSite = riskSite;
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
    public Risksite getmRiskSite() {
        return mRiskSite;
    }

    @JsonIgnore
    public void setmRiskSite(Risksite mRiskSite) {
        this.mRiskSite = mRiskSite;
    }

    @JsonIgnore
    public Integer getRiskSiteID() {
        return riskSiteID;
    }

    @JsonIgnore
    public void setRiskSiteID(Integer riskSiteID) {
        this.riskSiteID = riskSiteID;
    }
    @JsonIgnore
    public String getPlanStartDate() {
        return planStartDate;
    }
    @JsonIgnore
    public void setPlanStartDate(String planStartDate) {
        this.planStartDate = planStartDate;
    }
    @JsonIgnore
    public String getPlanEndDate() {
        return planEndDate;
    }
    @JsonIgnore
    public void setPlanEndDate(String planEndDate) {
        this.planEndDate = planEndDate;
    }
    @JsonIgnore
    public Integer getRiskHazardsCount() {
        return riskHazardsCount;
    }
    @JsonIgnore
    public void setRiskHazardsCount(Integer riskHazardsCount) {
        this.riskHazardsCount = riskHazardsCount;
    }
    @JsonIgnore
    public Integer getControlMeasureCount() {
        return controlMeasureCount;
    }
    @JsonIgnore
    public void setControlMeasureCount(Integer controlMeasureCount) {
        this.controlMeasureCount = controlMeasureCount;
    }
    @JsonIgnore
    public Boolean getMonthPlanItemStatus() {
        return monthPlanItemStatus;
    }
    @JsonIgnore
    public void setMonthPlanItemStatus(Boolean monthPlanItemStatus) {
        this.monthPlanItemStatus = monthPlanItemStatus;
    }
    @JsonIgnore
    public String getName() {
        return name;
    }
    @JsonIgnore
    public void setName(String name) {
        this.name = name;
    }
    @JsonIgnore
    public String getRiskDamageType() {
        return riskDamageType;
    }
    @JsonIgnore
    public void setRiskDamageType(String riskDamageType) {
        this.riskDamageType = riskDamageType;
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
    public String getRiskColor() {
        return riskColor;
    }
    @JsonIgnore
    public void setRiskColor(String riskColor) {
        this.riskColor = riskColor;
    }
}