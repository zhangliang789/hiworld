package cn.com.kingc.risk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:对应数据库的 表
 *
 * @author
 * @date 2018-05-05 11:25:50 中国标准时间
 */
public class Templatehazard implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("hazardID")
    private Integer hazardID;
    @JsonProperty("hazardUUID")
    private String hazardUUID;
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("accountabilityUnit")
    private String accountabilityUnit;
    @JsonProperty("consequence")
    private String consequence;
    @JsonProperty("damageType")
    private String damageType;
    @JsonProperty("expose")
    private Integer expose;
    @JsonProperty("riskTemplateID")
    private Integer riskTemplateID;
    @JsonProperty("exposeDegree")
    private String exposeDegree;
    @JsonProperty("lossConsequence")
    private Integer lossConsequence;
    @JsonProperty("majorType")
    private String majorType;
    @JsonProperty("manageUnit")
    private String manageUnit;
    @JsonProperty("name")
    private String name;
    @JsonProperty("operatingPost")
    private String operatingPost;
    @JsonProperty("possibility")
    private Double possibility;
    @JsonProperty("riskDegree")
    private String riskDegree;
    @JsonProperty("riskObject")
    private String riskObject;
    @JsonProperty("riskPlace")
    private String riskPlace;
    @JsonProperty("riskType")
    private String riskType;
    @JsonProperty("riskValue")
    private Double riskValue;
    @JsonProperty("status")
    private Boolean status;
    @JsonProperty("sseverity")
    private Integer sseverity;
    @JsonProperty("riskSiteFullNumber")
    private String riskSiteFullNumber;
    @JsonProperty("standardFullNumber")
    private String standardFullNumber;
    @JsonProperty("standardName")
    private String standardName;
    @JsonProperty("dutyRole")
    private String dutyRole;
    @JsonProperty("supervisionUnit")
    private String supervisionUnit;
    @JsonProperty("extendedAttributesJsonString")
    private String extendedAttributesJsonString;
    @JsonProperty("hazardDesc")
    private String hazardDesc;
    @JsonProperty("riskLevelSettingID")
    private Integer riskLevelSettingID;
    @JsonProperty("riskColor")
    private String riskColor;
    @JsonProperty("riskLevel")
    private String riskLevel;

    @JsonProperty("lastModifyVersion")
    private java.sql.Timestamp lastModifyVersion;
    //页面大小
    @JsonProperty("pageSize")
    private Integer pagesize;
    //页码
    @JsonProperty("page")
    private Integer page;

    @JsonProperty("riskObjectType")
    private String riskObjectType;
    @JsonProperty("accidentType")
    private String accidentType;
    @JsonProperty("riskKind")
    private String riskKind;

    //没分配前是危险源模板
    //分配出去后，就是危险源
    @JsonProperty("mPaleAndRange")
    private List<RiskInfoAndControRange> mPaleAndRange = new ArrayList<>();

    //无参构造方法
    public Templatehazard() {
    }

    //带参构造方法
    public Templatehazard(Integer hazardID, String hazardUUID, Integer riskSiteID, String coalMineName, String frameWorkID, String accountabilityUnit, String consequence, String damageType, Integer expose, Integer riskTemplateID, String exposeDegree, Integer lossConsequence, String majorType, String manageUnit, String name, String operatingPost, Double possibility, String riskDegree, String riskObject, String riskPlace, String riskType, Double riskValue, Boolean status, Integer sseverity, String riskSiteFullNumber, String standardFullNumber, String standardName, String dutyRole, String supervisionUnit, String extendedAttributesJsonString, String hazardDesc, Integer riskLevelSettingID, java.sql.Timestamp lastModifyVersion) {

        this.hazardID = hazardID;
        this.hazardUUID = hazardUUID;
        this.riskSiteID = riskSiteID;
        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.accountabilityUnit = accountabilityUnit;
        this.consequence = consequence;
        this.damageType = damageType;
        this.expose = expose;
        this.riskTemplateID = riskTemplateID;
        this.exposeDegree = exposeDegree;
        this.lossConsequence = lossConsequence;
        this.majorType = majorType;
        this.manageUnit = manageUnit;
        this.name = name;
        this.operatingPost = operatingPost;
        this.possibility = possibility;
        this.riskDegree = riskDegree;
        this.riskObject = riskObject;
        this.riskPlace = riskPlace;
        this.riskType = riskType;
        this.riskValue = riskValue;
        this.status = status;
        this.sseverity = sseverity;
        this.riskSiteFullNumber = riskSiteFullNumber;
        this.standardFullNumber = standardFullNumber;
        this.standardName = standardName;
        this.dutyRole = dutyRole;
        this.supervisionUnit = supervisionUnit;
        this.extendedAttributesJsonString = extendedAttributesJsonString;
        this.hazardDesc = hazardDesc;
        this.riskLevelSettingID = riskLevelSettingID;
        this.lastModifyVersion = lastModifyVersion;
    }


    //属性get set方法
    @JsonIgnore
    public String getRiskKind() {
        return riskKind;
    }

    @JsonIgnore
    public void setRiskKind(String riskKind) {
        this.riskKind = riskKind;
    }

    @JsonIgnore
    public String getRiskObjectType() {
        return riskObjectType;
    }

    @JsonIgnore
    public void setRiskObjectType(String riskObjectType) {
        this.riskObjectType = riskObjectType;
    }

    @JsonIgnore
    public String getAccidentType() {
        return accidentType;
    }

    @JsonIgnore
    public void setAccidentType(String accidentType) {
        this.accidentType = accidentType;
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
    public String getHazardUUID() {
        return this.hazardUUID;
    }

    @JsonIgnore
    public void setHazardUUID(String hazardUUID) {
        this.hazardUUID = hazardUUID;
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
    public String getAccountabilityUnit() {
        return this.accountabilityUnit;
    }

    @JsonIgnore
    public void setAccountabilityUnit(String accountabilityUnit) {
        this.accountabilityUnit = accountabilityUnit;
    }

    @JsonIgnore
    public String getConsequence() {
        return this.consequence;
    }

    @JsonIgnore
    public void setConsequence(String consequence) {
        this.consequence = consequence;
    }

    @JsonIgnore
    public String getDamageType() {
        return this.damageType;
    }

    @JsonIgnore
    public void setDamageType(String damageType) {
        this.damageType = damageType;
    }

    @JsonIgnore
    public Integer getExpose() {
        return this.expose;
    }

    @JsonIgnore
    public void setExpose(Integer expose) {
        this.expose = expose;
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
    public String getExposeDegree() {
        return this.exposeDegree;
    }

    @JsonIgnore
    public void setExposeDegree(String exposeDegree) {
        this.exposeDegree = exposeDegree;
    }

    @JsonIgnore
    public Integer getLossConsequence() {
        return this.lossConsequence;
    }

    @JsonIgnore
    public void setLossConsequence(Integer lossConsequence) {
        this.lossConsequence = lossConsequence;
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
    public String getManageUnit() {
        return this.manageUnit;
    }

    @JsonIgnore
    public void setManageUnit(String manageUnit) {
        this.manageUnit = manageUnit;
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
    public String getOperatingPost() {
        return this.operatingPost;
    }

    @JsonIgnore
    public void setOperatingPost(String operatingPost) {
        this.operatingPost = operatingPost;
    }

    @JsonIgnore
    public Double getPossibility() {
        return this.possibility;
    }

    @JsonIgnore
    public void setPossibility(Double possibility) {
        this.possibility = possibility;
    }

    @JsonIgnore
    public String getRiskDegree() {
        return this.riskDegree;
    }

    @JsonIgnore
    public void setRiskDegree(String riskDegree) {
        this.riskDegree = riskDegree;
    }

    @JsonIgnore
    public String getRiskObject() {
        return this.riskObject;
    }

    @JsonIgnore
    public void setRiskObject(String riskObject) {
        this.riskObject = riskObject;
    }

    @JsonIgnore
    public String getRiskPlace() {
        return this.riskPlace;
    }

    @JsonIgnore
    public void setRiskPlace(String riskPlace) {
        this.riskPlace = riskPlace;
    }

    @JsonIgnore
    public String getRiskType() {
        return this.riskType;
    }

    @JsonIgnore
    public void setRiskType(String riskType) {
        this.riskType = riskType;
    }

    @JsonIgnore
    public Double getRiskValue() {
        return this.riskValue;
    }

    @JsonIgnore
    public void setRiskValue(Double riskValue) {
        this.riskValue = riskValue;
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
    public Integer getSseverity() {
        return this.sseverity;
    }

    @JsonIgnore
    public void setSseverity(Integer sseverity) {
        this.sseverity = sseverity;
    }

    @JsonIgnore
    public String getRiskSiteFullNumber() {
        return this.riskSiteFullNumber;
    }

    @JsonIgnore
    public void setRiskSiteFullNumber(String riskSiteFullNumber) {
        this.riskSiteFullNumber = riskSiteFullNumber;
    }

    @JsonIgnore
    public String getStandardFullNumber() {
        return this.standardFullNumber;
    }

    @JsonIgnore
    public void setStandardFullNumber(String standardFullNumber) {
        this.standardFullNumber = standardFullNumber;
    }

    @JsonIgnore
    public String getStandardName() {
        return this.standardName;
    }

    @JsonIgnore
    public void setStandardName(String standardName) {
        this.standardName = standardName;
    }

    @JsonIgnore
    public String getDutyRole() {
        return this.dutyRole;
    }

    @JsonIgnore
    public void setDutyRole(String dutyRole) {
        this.dutyRole = dutyRole;
    }

    @JsonIgnore
    public String getSupervisionUnit() {
        return this.supervisionUnit;
    }

    @JsonIgnore
    public void setSupervisionUnit(String supervisionUnit) {
        this.supervisionUnit = supervisionUnit;
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
    public String getHazardDesc() {
        return this.hazardDesc;
    }

    @JsonIgnore
    public void setHazardDesc(String hazardDesc) {
        this.hazardDesc = hazardDesc;
    }

    @JsonIgnore
    public Integer getRiskLevelSettingID() {
        return this.riskLevelSettingID;
    }

    @JsonIgnore
    public void setRiskLevelSettingID(Integer riskLevelSettingID) {
        this.riskLevelSettingID = riskLevelSettingID;
    }

    @JsonIgnore
    public java.sql.Timestamp getLastModifyVersion() {
        return this.lastModifyVersion;
    }

    @JsonIgnore
    public void setLastModifyVersion(java.sql.Timestamp lastModifyVersion) {
        this.lastModifyVersion = lastModifyVersion;
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
    public List<RiskInfoAndControRange> getmPaleAndRange() {
        return mPaleAndRange;
    }

    @JsonIgnore
    public void setmPaleAndRange(List<RiskInfoAndControRange> mPaleAndRange) {
        this.mPaleAndRange = mPaleAndRange;
    }
}