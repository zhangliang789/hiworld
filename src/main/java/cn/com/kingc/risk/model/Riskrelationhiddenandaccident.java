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
 * @date 2018-09-30 13:38:00 中国标准时间
 * @author
 * @version
 */
public class Riskrelationhiddenandaccident implements Serializable{
    private static final long serialVersionUID = 1L;

    @JsonProperty("coalMineName")
    private  String coalMineName;
    @JsonProperty("frameWorkID")
    private  String frameWorkID;
    @JsonProperty("riskRelationHiddenAndAccidentID")
    private  Integer riskRelationHiddenAndAccidentID;
    @JsonProperty("riskSiteID")
    private  Integer riskSiteID;
    @JsonProperty("hazardID")
    private  Integer hazardID;
    //风险名称
    @JsonProperty("hazard_Name")
    private  String hazard_Name;
    //风险描述
    @JsonProperty("hazardDesc")
    private  String hazardDesc;
    //灾害类型
    @JsonProperty("damageType")
    private  String damageType;
    //风险等级
    @JsonProperty("riskLevelSettingID")
    private  Integer riskLevelSettingID;
    @JsonProperty("fHiddenTroubleID")
    private  Integer fHiddenTroubleID;
    //隐患描述
    @JsonProperty("fDescription")
    private  String fDescription;
    //隐患地点
    @JsonProperty("fLocation")
    private  String fLocation;
    //隐患等级
    @JsonProperty("hiddentrouble_Level")
    private  String hiddentrouble_Level;
    //事故主键
    @JsonProperty("accidentID")
    private  String accidentID;
    //事故原因主键
    @JsonProperty("accident_Danger_RiskID")
    private  String accident_Danger_RiskID;
    //事故原因内容
    @JsonProperty("accident_Reasion")
    private  String accident_Reasion;
    @JsonProperty("riskSiteUUID")
    private  String riskSiteUUID;
    @JsonProperty("hazardUUID")
    private  String hazardUUID;
    @JsonProperty("fHiddenTroubleUUID")
    private  String fHiddenTroubleUUID;
    //页面大小
    @JsonProperty("pageSize")
    private Integer pagesize;
    //页码
    @JsonProperty("page")
    private Integer page;



    //无参构造方法
    public Riskrelationhiddenandaccident(){}

    //带参构造方法
    public Riskrelationhiddenandaccident (String coalMineName,String frameWorkID,Integer riskRelationHiddenAndAccidentID,Integer riskSiteID,Integer hazardID,String hazard_Name,String hazardDesc,String damageType,Integer riskLevelSettingID,Integer fHiddenTroubleID,String fDescription,String fLocation,String hiddentrouble_Level,String accidentID,String accident_Danger_RiskID,String accident_Reasion,String riskSiteUUID,String hazardUUID,String fHiddenTroubleUUID){

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.riskRelationHiddenAndAccidentID = riskRelationHiddenAndAccidentID;
        this.riskSiteID = riskSiteID;
        this.hazardID = hazardID;
        this.hazard_Name = hazard_Name;
        this.hazardDesc = hazardDesc;
        this.damageType = damageType;
        this.riskLevelSettingID = riskLevelSettingID;
        this.fHiddenTroubleID = fHiddenTroubleID;
        this.fDescription = fDescription;
        this.fLocation = fLocation;
        this.hiddentrouble_Level = hiddentrouble_Level;
        this.accidentID = accidentID;
        this.accident_Danger_RiskID = accident_Danger_RiskID;
        this.accident_Reasion = accident_Reasion;
        this.riskSiteUUID = riskSiteUUID;
        this.hazardUUID = hazardUUID;
        this.fHiddenTroubleUUID = fHiddenTroubleUUID;
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
    public Integer getRiskRelationHiddenAndAccidentID() {
        return this.riskRelationHiddenAndAccidentID;
    }
    @JsonIgnore
    public void setRiskRelationHiddenAndAccidentID(Integer riskRelationHiddenAndAccidentID) {
        this.riskRelationHiddenAndAccidentID = riskRelationHiddenAndAccidentID;
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
    public String getHazard_Name() {
        return this.hazard_Name;
    }
    @JsonIgnore
    public void setHazard_Name(String hazard_Name) {
        this.hazard_Name = hazard_Name;
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
    public String getDamageType() {
        return this.damageType;
    }
    @JsonIgnore
    public void setDamageType(String damageType) {
        this.damageType = damageType;
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
    public Integer getFHiddenTroubleID() {
        return this.fHiddenTroubleID;
    }
    @JsonIgnore
    public void setFHiddenTroubleID(Integer fHiddenTroubleID) {
        this.fHiddenTroubleID = fHiddenTroubleID;
    }
    @JsonIgnore
    public String getFDescription() {
        return this.fDescription;
    }
    @JsonIgnore
    public void setFDescription(String fDescription) {
        this.fDescription = fDescription;
    }
    @JsonIgnore
    public String getFLocation() {
        return this.fLocation;
    }
    @JsonIgnore
    public void setFLocation(String fLocation) {
        this.fLocation = fLocation;
    }
    @JsonIgnore
    public String getHiddentrouble_Level() {
        return this.hiddentrouble_Level;
    }
    @JsonIgnore
    public void setHiddentrouble_Level(String hiddentrouble_Level) {
        this.hiddentrouble_Level = hiddentrouble_Level;
    }
    @JsonIgnore
    public String getAccidentID() {
        return this.accidentID;
    }
    @JsonIgnore
    public void setAccidentID(String accidentID) {
        this.accidentID = accidentID;
    }
    @JsonIgnore
    public String getAccident_Danger_RiskID() {
        return this.accident_Danger_RiskID;
    }
    @JsonIgnore
    public void setAccident_Danger_RiskID(String accident_Danger_RiskID) {
        this.accident_Danger_RiskID = accident_Danger_RiskID;
    }
    @JsonIgnore
    public String getAccident_Reasion() {
        return this.accident_Reasion;
    }
    @JsonIgnore
    public void setAccident_Reasion(String accident_Reasion) {
        this.accident_Reasion = accident_Reasion;
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
    public String getHazardUUID() {
        return this.hazardUUID;
    }
    @JsonIgnore
    public void setHazardUUID(String hazardUUID) {
        this.hazardUUID = hazardUUID;
    }
    @JsonIgnore
    public String getFHiddenTroubleUUID() {
        return this.fHiddenTroubleUUID;
    }
    @JsonIgnore
    public void setFHiddenTroubleUUID(String fHiddenTroubleUUID) {
        this.fHiddenTroubleUUID = fHiddenTroubleUUID;
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