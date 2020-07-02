package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:对应数据库的 表
 *
 * @author
 * @date 2018-05-04 13:02:59 中国标准时间
 */
public class RiskDetailedByXinAn implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("riskSiteControlRangeID")
    private Integer riskSiteControlRangeID;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("riskName")
    private String riskName;
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("riskChildName")
    private String riskChildName;
    @JsonProperty("riskChildID")
    private Integer riskChildID;

    @JsonProperty("riskhazardName")
    private String riskhazardName;
    @JsonProperty("riskhazardID")
    private Integer riskhazardID;

    @JsonProperty("hazardDesc")
    private String hazardDesc;
    @JsonProperty("driskValue")
    private double driskValue;
    @JsonProperty("riskLevel")
    private String riskLevel;


    @JsonProperty("possibility")
    private double possibility;
    @JsonProperty("expose")
    private Integer expose;
    @JsonProperty("sseverity")
    private Integer sseverity;
    @JsonProperty("consequence")
    private Integer consequence;

    @JsonProperty("damageType")
    private String damageType;

    @JsonProperty("majorType")
    private String majorType;

    @JsonProperty("riskColor")
    private String riskColor;
    @JsonProperty("accidentType")
    private String accidentType;




    @JsonProperty("startTime")
    private String startTime;
    @JsonProperty("endTime")
    private String endTime;

    @JsonProperty("kRangeName")
    private String kRangeName;
    @JsonProperty("kRangePinci")
    private String kRangePinci;
    @JsonProperty("kmanageUnit")
    private String kmanageUnit;
    @JsonProperty("kmanageDuty")
    private String kmanageDuty;

    @JsonProperty("zRangeName")
    private String zRangeName;
    @JsonProperty("zRangePinci")
    private String zRangePinci;
    @JsonProperty("zmanageUnit")
    private String zmanageUnit;
    @JsonProperty("zmanageDuty")
    private String zmanageDuty;

    @JsonProperty("qRangeName")
    private String qRangeName;
    @JsonProperty("qRangePinci")
    private String qRangePinci;
    @JsonProperty("qmanageUnit")
    private String qmanageUnit;
    @JsonProperty("qmanageDuty")
    private String qmanageDuty;

    @JsonProperty("bRangeName")
    private String bRangeName;
    @JsonProperty("bRangePinci")
    private String bRangePinci;
    @JsonProperty("bmanageUnit")
    private String bmanageUnit;
    @JsonProperty("bmanageDuty")
    private String bmanageDuty;


    @JsonProperty("gRangeName")
    private String gRangeName;
    @JsonProperty("gRangePinci")
    private String gRangePinci;
    @JsonProperty("gmanageUnit")
    private String gmanageUnit;
    @JsonProperty("gmanageDuty")
    private String gmanageDuty;

    @JsonIgnore
    public String getHazardDesc() {
        return hazardDesc;
    }
    @JsonIgnore
    public void setHazardDesc(String hazardDesc) {
        this.hazardDesc = hazardDesc;
    }
    @JsonIgnore
    public double getDriskValue() {
        return driskValue;
    }
    @JsonIgnore
    public void setDriskValue(double driskValue) {
        this.driskValue = driskValue;
    }
    @JsonIgnore
    public double getPossibility() {
        return possibility;
    }
    @JsonIgnore
    public void setPossibility(double possibility) {
        this.possibility = possibility;
    }
    @JsonIgnore
    public Integer getExpose() {
        return expose;
    }
    @JsonIgnore
    public void setExpose(Integer expose) {
        this.expose = expose;
    }
    @JsonIgnore
    public Integer getSseverity() {
        return sseverity;
    }
    @JsonIgnore
    public void setSseverity(Integer sseverity) {
        this.sseverity = sseverity;
    }
    @JsonIgnore
    public Integer getConsequence() {
        return consequence;
    }
    @JsonIgnore
    public void setConsequence(Integer consequence) {
        this.consequence = consequence;
    }
    @JsonIgnore
    public String getDamageType() {
        return damageType;
    }
    @JsonIgnore
    public void setDamageType(String damageType) {
        this.damageType = damageType;
    }
    @JsonIgnore
    public String getMajorType() {
        return majorType;
    }
    @JsonIgnore
    public void setMajorType(String majorType) {
        this.majorType = majorType;
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
    public String getAccidentType() {
        return accidentType;
    }
    @JsonIgnore
    public void setAccidentType(String accidentType) {
        this.accidentType = accidentType;
    }

    @JsonIgnore
    public Integer getRiskSiteControlRangeID() {
        return riskSiteControlRangeID;
    }
    @JsonIgnore
    public void setRiskSiteControlRangeID(Integer riskSiteControlRangeID) {
        this.riskSiteControlRangeID = riskSiteControlRangeID;
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
    public String getRiskName() {
        return riskName;
    }
    @JsonIgnore
    public void setRiskName(String riskName) {
        this.riskName = riskName;
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
    public String getRiskChildName() {
        return riskChildName;
    }
    @JsonIgnore
    public void setRiskChildName(String riskChildName) {
        this.riskChildName = riskChildName;
    }
    @JsonIgnore
    public Integer getRiskChildID() {
        return riskChildID;
    }
    @JsonIgnore
    public void setRiskChildID(Integer riskChildID) {
        this.riskChildID = riskChildID;
    }
    @JsonIgnore
    public String getRiskhazardName() {
        return riskhazardName;
    }
    @JsonIgnore
    public void setRiskhazardName(String riskhazardName) {
        this.riskhazardName = riskhazardName;
    }
    @JsonIgnore
    public Integer getRiskhazardID() {
        return riskhazardID;
    }
    @JsonIgnore
    public void setRiskhazardID(Integer riskhazardID) {
        this.riskhazardID = riskhazardID;
    }
    @JsonIgnore
    public String getStartTime() {
        return startTime;
    }
    @JsonIgnore
    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }
    @JsonIgnore
    public String getEndTime() {
        return endTime;
    }
    @JsonIgnore
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }
    @JsonIgnore
    public String getkRangeName() {
        return kRangeName;
    }
    @JsonIgnore
    public void setkRangeName(String kRangeName) {
        this.kRangeName = kRangeName;
    }
    @JsonIgnore
    public String getkRangePinci() {
        return kRangePinci;
    }
    @JsonIgnore
    public void setkRangePinci(String kRangePinci) {
        this.kRangePinci = kRangePinci;
    }
    @JsonIgnore
    public String getKmanageUnit() {
        return kmanageUnit;
    }
    @JsonIgnore
    public void setKmanageUnit(String kmanageUnit) {
        this.kmanageUnit = kmanageUnit;
    }
    @JsonIgnore
    public String getKmanageDuty() {
        return kmanageDuty;
    }
    @JsonIgnore
    public void setKmanageDuty(String kmanageDuty) {
        this.kmanageDuty = kmanageDuty;
    }
    @JsonIgnore
    public String getzRangeName() {
        return zRangeName;
    }
    @JsonIgnore
    public void setzRangeName(String zRangeName) {
        this.zRangeName = zRangeName;
    }
    @JsonIgnore
    public String getzRangePinci() {
        return zRangePinci;
    }
    @JsonIgnore
    public void setzRangePinci(String zRangePinci) {
        this.zRangePinci = zRangePinci;
    }
    @JsonIgnore
    public String getZmanageUnit() {
        return zmanageUnit;
    }
    @JsonIgnore
    public void setZmanageUnit(String zmanageUnit) {
        this.zmanageUnit = zmanageUnit;
    }
    @JsonIgnore
    public String getZmanageDuty() {
        return zmanageDuty;
    }
    @JsonIgnore
    public void setZmanageDuty(String zmanageDuty) {
        this.zmanageDuty = zmanageDuty;
    }
    @JsonIgnore
    public String getqRangeName() {
        return qRangeName;
    }
    @JsonIgnore
    public void setqRangeName(String qRangeName) {
        this.qRangeName = qRangeName;
    }
    @JsonIgnore
    public String getqRangePinci() {
        return qRangePinci;
    }
    @JsonIgnore
    public void setqRangePinci(String qRangePinci) {
        this.qRangePinci = qRangePinci;
    }
    @JsonIgnore
    public String getQmanageUnit() {
        return qmanageUnit;
    }
    @JsonIgnore
    public void setQmanageUnit(String qmanageUnit) {
        this.qmanageUnit = qmanageUnit;
    }
    @JsonIgnore
    public String getQmanageDuty() {
        return qmanageDuty;
    }
    @JsonIgnore
    public void setQmanageDuty(String qmanageDuty) {
        this.qmanageDuty = qmanageDuty;
    }
    @JsonIgnore
    public String getbRangeName() {
        return bRangeName;
    }
    @JsonIgnore
    public void setbRangeName(String bRangeName) {
        this.bRangeName = bRangeName;
    }
    @JsonIgnore
    public String getbRangePinci() {
        return bRangePinci;
    }
    @JsonIgnore
    public void setbRangePinci(String bRangePinci) {
        this.bRangePinci = bRangePinci;
    }
    @JsonIgnore
    public String getBmanageUnit() {
        return bmanageUnit;
    }
    @JsonIgnore
    public void setBmanageUnit(String bmanageUnit) {
        this.bmanageUnit = bmanageUnit;
    }
    @JsonIgnore
    public String getBmanageDuty() {
        return bmanageDuty;
    }
    @JsonIgnore
    public void setBmanageDuty(String bmanageDuty) {
        this.bmanageDuty = bmanageDuty;
    }
    @JsonIgnore
    public String getgRangeName() {
        return gRangeName;
    }
    @JsonIgnore
    public void setgRangeName(String gRangeName) {
        this.gRangeName = gRangeName;
    }
    @JsonIgnore
    public String getgRangePinci() {
        return gRangePinci;
    }
    @JsonIgnore
    public void setgRangePinci(String gRangePinci) {
        this.gRangePinci = gRangePinci;
    }
    @JsonIgnore
    public String getGmanageUnit() {
        return gmanageUnit;
    }
    @JsonIgnore
    public void setGmanageUnit(String gmanageUnit) {
        this.gmanageUnit = gmanageUnit;
    }
    @JsonIgnore
    public String getGmanageDuty() {
        return gmanageDuty;
    }
    @JsonIgnore
    public void setGmanageDuty(String gmanageDuty) {
        this.gmanageDuty = gmanageDuty;
    }
}