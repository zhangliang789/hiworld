package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:视图:reportyearrisk
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 视图:reportyearrisk表
* @date 2018-01-08 13:23:14 中国标准时间
* @author
* @version
*/
public class SynReportyearrisk implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("id")
        private  String id;
        @JsonProperty("yeMhazardDesc")
        private  String yeMhazardDesc;
        @JsonProperty("yeProfession")
        private  String yeProfession;
        @JsonProperty("yeAccident")
        private  String yeAccident;
        @JsonProperty("yeStandard")
        private  String yeStandard;
        @JsonProperty("yePossiblyHazard")
        private  String yePossiblyHazard;
        @JsonProperty("yeHazardCate")
        private  String yeHazardCate;
        @JsonProperty("yeRiskGrade")
        private  String yeRiskGrade;
        @JsonProperty("yeCaseNum")
        private  String yeCaseNum;
        @JsonProperty("yeRecognizeTime")
        private  String yeRecognizeTime;
        @JsonProperty("isMajor")
        private  Long isMajor;
        @JsonProperty("riskValue")
        private  Double riskValue;
        @JsonProperty("manageMeasure")
        private  String manageMeasure;
        @JsonProperty("lECRiskValue")
        private  Double lECRiskValue;
        @JsonProperty("docSource")
        private  String docSource;
        @JsonProperty("sectionName")
        private  String sectionName;
        @JsonProperty("dutyPost")
        private  String dutyPost;
        @JsonProperty("activity")
        private  String activity;
        @JsonProperty("hazardManageName")
        private  String hazardManageName;
        @JsonProperty("damageType")
        private  String damageType;
        @JsonProperty("hiddenLevel")
        private  Long hiddenLevel;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

    //无参构造方法
    public SynReportyearrisk(){}

    //带参构造方法
    public SynReportyearrisk(String id, String yeMhazardDesc, String yeProfession, String yeAccident, String yeStandard, String yePossiblyHazard, String yeHazardCate, String yeRiskGrade, String yeCaseNum, String yeRecognizeTime, Long isMajor, Double riskValue, String manageMeasure, Double lECRiskValue, String docSource, String sectionName, String dutyPost, String activity, String hazardManageName, String damageType, Long hiddenLevel){

         this.id = id;
         this.yeMhazardDesc = yeMhazardDesc;
         this.yeProfession = yeProfession;
         this.yeAccident = yeAccident;
         this.yeStandard = yeStandard;
         this.yePossiblyHazard = yePossiblyHazard;
         this.yeHazardCate = yeHazardCate;
         this.yeRiskGrade = yeRiskGrade;
         this.yeCaseNum = yeCaseNum;
         this.yeRecognizeTime = yeRecognizeTime;
         this.isMajor = isMajor;
         this.riskValue = riskValue;
         this.manageMeasure = manageMeasure;
         this.lECRiskValue = lECRiskValue;
         this.docSource = docSource;
         this.sectionName = sectionName;
         this.dutyPost = dutyPost;
         this.activity = activity;
         this.hazardManageName = hazardManageName;
         this.damageType = damageType;
         this.hiddenLevel = hiddenLevel;
    }


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
    public Long getIsMajor() {
        return this.isMajor;
    }
    @JsonIgnore
    public void setIsMajor(Long isMajor) {
        this.isMajor = isMajor;
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
    public String getManageMeasure() {
        return this.manageMeasure;
    }
    @JsonIgnore
    public void setManageMeasure(String manageMeasure) {
        this.manageMeasure = manageMeasure;
    }
    @JsonIgnore
    public Double getLECRiskValue() {
        return this.lECRiskValue;
    }
    @JsonIgnore
    public void setLECRiskValue(Double lECRiskValue) {
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
    public Long getHiddenLevel() {
        return this.hiddenLevel;
    }
    @JsonIgnore
    public void setHiddenLevel(Long hiddenLevel) {
        this.hiddenLevel = hiddenLevel;
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