package cn.com.kingc.risk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Title:视图:synreportmajoryearrisk
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:对应数据库的 视图:synreportmajoryearrisk表
 *
 * @author
 * @date 2018-01-08 14:56:47 中国标准时间
 */
public class Synreportmajoryearrisk implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("id")
    private String id;
    @JsonProperty("yeMhazardDesc")
    private String yeMhazardDesc;
    @JsonProperty("yeProfession")
    private String yeProfession;
    @JsonProperty("yeAccident")
    private String yeAccident;
    @JsonProperty("yeStandard")
    private String yeStandard;
    @JsonProperty("yePossiblyHazard")
    private String yePossiblyHazard;
    @JsonProperty("yeHazardCate")
    private String yeHazardCate;
    @JsonProperty("yeRiskGrade")
    private String yeRiskGrade;
    @JsonProperty("yeCaseNum")
    private String yeCaseNum;
    @JsonProperty("yeRecognizeTime")
    private String yeRecognizeTime;
    @JsonProperty("isMajor")
    private String isMajor;
    @JsonProperty("riskValue")
    private String riskValue;
    @JsonProperty("manageMeasure")
    private String manageMeasure;
    @JsonProperty("lECRiskValue")
    private String lECRiskValue;
    @JsonProperty("docSource")
    private String docSource;
    @JsonProperty("sectionName")
    private String sectionName;
    @JsonProperty("dutyPost")
    private String dutyPost;
    @JsonProperty("activity")
    private String activity;
    @JsonProperty("hazardManageName")
    private String hazardManageName;
    @JsonProperty("damageType")
    private String damageType;
    @JsonProperty("hiddenLevel")
    private String hiddenLevel;
    @JsonProperty("manageRecord")
    private List<SynreportmajoryearriskControl> manageRecord=new ArrayList<>();
    //@JsonProperty("attachments")
    //private String attachments;
    @JsonProperty("attachments")
    private List<Synattachment> attachments=new ArrayList<Synattachment>();
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("hazardID")
    private Integer hazardID;
    @JsonProperty("riskSiteFullNumber")
    private String riskSiteFullNumber;
    @JsonProperty("controlMangerName")
    private String controlMangerName;
    @JsonProperty("harzardName")
    private String harzardName;



    //属性get set方法
    @JsonIgnore
    public String getId() {
        return this.id;
    }

    @JsonIgnore
    public void setId(String id) {
        this.id = id;
    }

    @JsonIgnore
    public String getYeMhazardDesc() {
        return this.yeMhazardDesc;
    }

    @JsonIgnore
    public void setYeMhazardDesc(String yeMhazardDesc) {
        this.yeMhazardDesc = yeMhazardDesc;
    }

    @JsonIgnore
    public String getYeProfession() {
        return this.yeProfession;
    }

    @JsonIgnore
    public void setYeProfession(String yeProfession) {
        this.yeProfession = yeProfession;
    }

    @JsonIgnore
    public String getYeAccident() {
        return this.yeAccident;
    }

    @JsonIgnore
    public void setYeAccident(String yeAccident) {
        this.yeAccident = yeAccident;
    }

    @JsonIgnore
    public String getYeStandard() {
        return this.yeStandard;
    }

    @JsonIgnore
    public void setYeStandard(String yeStandard) {
        this.yeStandard = yeStandard;
    }

    @JsonIgnore
    public String getYePossiblyHazard() {
        return this.yePossiblyHazard;
    }

    @JsonIgnore
    public void setYePossiblyHazard(String yePossiblyHazard) {
        this.yePossiblyHazard = yePossiblyHazard;
    }

    @JsonIgnore
    public String getYeHazardCate() {
        return this.yeHazardCate;
    }

    @JsonIgnore
    public void setYeHazardCate(String yeHazardCate) {
        this.yeHazardCate = yeHazardCate;
    }

    @JsonIgnore
    public String getYeRiskGrade() {
        return this.yeRiskGrade;
    }

    @JsonIgnore
    public void setYeRiskGrade(String yeRiskGrade) {
        this.yeRiskGrade = yeRiskGrade;
    }

    @JsonIgnore
    public String getYeCaseNum() {
        return this.yeCaseNum;
    }

    @JsonIgnore
    public void setYeCaseNum(String yeCaseNum) {
        this.yeCaseNum = yeCaseNum;
    }

    @JsonIgnore
    public String getYeRecognizeTime() {
        return this.yeRecognizeTime;
    }

    @JsonIgnore
    public void setYeRecognizeTime(String yeRecognizeTime) {
        this.yeRecognizeTime = yeRecognizeTime;
    }

    @JsonIgnore
    public String getIsMajor() {
        return this.isMajor;
    }

    @JsonIgnore
    public void setIsMajor(String isMajor) {
        this.isMajor = isMajor;
    }

    @JsonIgnore
    public String getRiskValue() {
        return this.riskValue;
    }

    @JsonIgnore
    public void setRiskValue(String riskValue) {
        this.riskValue = riskValue;
    }

    @JsonIgnore
    public String getManageMeasure() {
        return this.manageMeasure;
    }

    @JsonIgnore
    public void setManageMeasure(String manageMeasure) {
        this.manageMeasure = manageMeasure;
    }

    @JsonIgnore
    public String getLECRiskValue() {
        return this.lECRiskValue;
    }

    @JsonIgnore
    public void setLECRiskValue(String lECRiskValue) {
        this.lECRiskValue = lECRiskValue;
    }

    @JsonIgnore
    public String getDocSource() {
        return this.docSource;
    }

    @JsonIgnore
    public void setDocSource(String docSource) {
        this.docSource = docSource;
    }

    @JsonIgnore
    public String getSectionName() {
        return this.sectionName;
    }

    @JsonIgnore
    public void setSectionName(String sectionName) {
        this.sectionName = sectionName;
    }

    @JsonIgnore
    public String getDutyPost() {
        return this.dutyPost;
    }

    @JsonIgnore
    public void setDutyPost(String dutyPost) {
        this.dutyPost = dutyPost;
    }

    @JsonIgnore
    public String getActivity() {
        return this.activity;
    }

    @JsonIgnore
    public void setActivity(String activity) {
        this.activity = activity;
    }

    @JsonIgnore
    public String getHazardManageName() {
        return this.hazardManageName;
    }

    @JsonIgnore
    public void setHazardManageName(String hazardManageName) {
        this.hazardManageName = hazardManageName;
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
    public String getHiddenLevel() {
        return this.hiddenLevel;
    }

    @JsonIgnore
    public void setHiddenLevel(String hiddenLevel) {
        this.hiddenLevel = hiddenLevel;
    }

    @JsonIgnore
    public List<SynreportmajoryearriskControl> getManageRecord() {
        return this.manageRecord;
    }

    @JsonIgnore
    public void setManageRecord(List<SynreportmajoryearriskControl> manageRecord) {
        this.manageRecord = manageRecord;
    }

    @JsonIgnore
    public List<Synattachment> getAttachments() {
        return this.attachments;
    }

    @JsonIgnore
    public void setAttachments(List<Synattachment> attachments) {
        this.attachments = attachments;
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
    public Integer getHazardID() {
        return hazardID;
    }
    @JsonIgnore
    public void setHazardID(Integer hazardID) {
        this.hazardID = hazardID;
    }
    @JsonIgnore
    public String getRiskSiteFullNumber() {
        return riskSiteFullNumber;
    }
    @JsonIgnore
    public void setRiskSiteFullNumber(String riskSiteFullNumber) {
        this.riskSiteFullNumber = riskSiteFullNumber;
    }

    @JsonIgnore
    public String getControlMangerName(){return controlMangerName;}
    @JsonIgnore
    public void setControlMangerName(String controlMangerName){this.controlMangerName = controlMangerName;}
    @JsonIgnore
    public String getHarzardName(){return harzardName;}
    @JsonIgnore
    public void setHarzardName(String harzardName){this.harzardName = harzardName;}
}