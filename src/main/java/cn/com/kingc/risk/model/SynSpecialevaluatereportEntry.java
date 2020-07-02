package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

/**
 * Created by admistrator on 2018-01-09.
 */
public class SynSpecialevaluatereportEntry implements Serializable{
    private static final long serialVersionUID = -3580234300726110475L;
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
    @JsonProperty("LECRiskValue")
    private String LECRiskValue;
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

    @JsonIgnore
    public String getId() {
        return id;
    }
    @JsonIgnore
    public void setId(String id) {
        this.id = id;
    }
    @JsonIgnore
    public String getYeMhazardDesc() {
        return yeMhazardDesc;
    }
    @JsonIgnore
    public void setYeMhazardDesc(String yeMhazardDesc) {
        this.yeMhazardDesc = yeMhazardDesc;
    }
    @JsonIgnore
    public String getYeProfession() {
        return yeProfession;
    }
    @JsonIgnore
    public void setYeProfession(String yeProfession) {
        this.yeProfession = yeProfession;
    }
    @JsonIgnore
    public String getYeAccident() {
        return yeAccident;
    }
    @JsonIgnore
    public void setYeAccident(String yeAccident) {
        this.yeAccident = yeAccident;
    }
    @JsonIgnore
    public String getYeStandard() {
        return yeStandard;
    }
    @JsonIgnore
    public void setYeStandard(String yeStandard) {
        this.yeStandard = yeStandard;
    }
    @JsonIgnore
    public String getYePossiblyHazard() {
        return yePossiblyHazard;
    }
    @JsonIgnore
    public void setYePossiblyHazard(String yePossiblyHazard) {
        this.yePossiblyHazard = yePossiblyHazard;
    }
    @JsonIgnore
    public String getYeHazardCate() {
        return yeHazardCate;
    }
    @JsonIgnore
    public void setYeHazardCate(String yeHazardCate) {
        this.yeHazardCate = yeHazardCate;
    }
    @JsonIgnore
    public String getYeRiskGrade() {
        return yeRiskGrade;
    }
    @JsonIgnore
    public void setYeRiskGrade(String yeRiskGrade) {
        this.yeRiskGrade = yeRiskGrade;
    }
    @JsonIgnore
    public String getYeCaseNum() {
        return yeCaseNum;
    }
    @JsonIgnore
    public void setYeCaseNum(String yeCaseNum) {
        this.yeCaseNum = yeCaseNum;
    }
    @JsonIgnore
    public String getYeRecognizeTime() {
        return yeRecognizeTime;
    }
    @JsonIgnore
    public void setYeRecognizeTime(String yeRecognizeTime) {
        this.yeRecognizeTime = yeRecognizeTime;
    }
    @JsonIgnore
    public String getIsMajor() {
        return isMajor;
    }
    @JsonIgnore
    public void setIsMajor(String isMajor) {
        this.isMajor = isMajor;
    }
    @JsonIgnore
    public String getRiskValue() {
        return riskValue;
    }
    @JsonIgnore
    public void setRiskValue(String riskValue) {
        this.riskValue = riskValue;
    }
    @JsonIgnore
    public String getManageMeasure() {
        return manageMeasure;
    }
    @JsonIgnore
    public void setManageMeasure(String manageMeasure) {
        this.manageMeasure = manageMeasure;
    }
    @JsonIgnore
    public String getLECRiskValue() {
        return LECRiskValue;
    }
    @JsonIgnore
    public void setLECRiskValue(String LECRiskValue) {
        this.LECRiskValue = LECRiskValue;
    }
    @JsonIgnore
    public String getDocSource() {
        return docSource;
    }
    @JsonIgnore
    public void setDocSource(String docSource) {
        this.docSource = docSource;
    }
    @JsonIgnore
    public String getSectionName() {
        return sectionName;
    }
    @JsonIgnore
    public void setSectionName(String sectionName) {
        this.sectionName = sectionName;
    }
    @JsonIgnore
    public String getDutyPost() {
        return dutyPost;
    }
    @JsonIgnore
    public void setDutyPost(String dutyPost) {
        this.dutyPost = dutyPost;
    }
    @JsonIgnore
    public String getActivity() {
        return activity;
    }
    @JsonIgnore
    public void setActivity(String activity) {
        this.activity = activity;
    }
    @JsonIgnore
    public String getHazardManageName() {
        return hazardManageName;
    }
    @JsonIgnore
    public void setHazardManageName(String hazardManageName) {
        this.hazardManageName = hazardManageName;
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
    public String getHiddenLevel() {
        return hiddenLevel;
    }
    @JsonIgnore
    public void setHiddenLevel(String hiddenLevel) {
        this.hiddenLevel = hiddenLevel;
    }
}
