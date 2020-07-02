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
* Description:对应数据库的RiskControlScheme表
* @date 2019-02-20 16:20:08 中国标准时间
* @author
* @version
*/
public class RiskControlScheme implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("ID")
        private  String ID;
        @JsonProperty("frameWorkID")
        private  String frameWorkID;
        @JsonProperty("coalMineName")
        private  String coalMineName;
        @JsonProperty("riskControlSchemeName")
        private  String riskControlSchemeName;
        @JsonProperty("dutyUnitID")
        private  String dutyUnitID;
        @JsonProperty("dutyUnitName")
        private  String dutyUnitName;
        @JsonProperty("dutyPersonID")
        private  String dutyPersonID;
        @JsonProperty("dutyPersonName")
        private  String dutyPersonName;
        @JsonProperty("manageStartDate")
        private  java.sql.Date manageStartDate;
        @JsonProperty("manageEndDate")
        private  java.sql.Date manageEndDate;
        //资金
        @JsonProperty("funds")
        private  String funds;
        //物资
        @JsonProperty("material")
        private  String material;
        //管控要求
        @JsonProperty("controlRequirements")
        private  String controlRequirements;
        //安全措施
        @JsonProperty("securityArrangement")
        private  String securityArrangement;
        //应急预案
        @JsonProperty("contingencyPlan")
        private  String contingencyPlan;
        @JsonProperty("riskSiteID")
        private  String riskSiteID;
        @JsonProperty("riskSiteName")
        private  String riskSiteName;
        @JsonProperty("controlObjectID")
        private  String controlObjectID;
        @JsonProperty("controlObjectName")
        private  String controlObjectName;
        @JsonProperty("riskID")
        private  String riskID;
        @JsonProperty("riskName")
        private  String riskName;
        @JsonProperty("controlMeasureIDs")
        private String controlMeasureIDs;
        @JsonProperty("attachFileName")
        private String attachFileName;
        @JsonProperty("attachID")
        private String attachID;
        @JsonProperty("createDate")
        private  java.sql.Timestamp createDate;
        @JsonProperty("createrID")
        private  String createrID;
        @JsonProperty("createrName")
        private  String createrName;
        @JsonProperty("delflag")
        private  String delflag;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;



    //无参构造方法
    public RiskControlScheme(){}

    //带参构造方法
    public RiskControlScheme (String ID,String frameWorkID,String coalMineName,String riskControlSchemeName,String dutyUnitID,String dutyUnitName,String dutyPersonID,String dutyPersonName,java.sql.Date manageStartDate,java.sql.Date manageEndDate,String funds,String material,String controlRequirements,String securityArrangement,String contingencyPlan,java.sql.Timestamp createDate,String createrID,String createrName,String delflag,
                              String riskSiteID,String riskSiteName,String controlObjectID,String controlObjectName,String riskID,String riskName,String controlMeasureIDs,String attachFileName,String attachID){

         this.ID = ID;
         this.frameWorkID = frameWorkID;
         this.coalMineName = coalMineName;
         this.riskControlSchemeName = riskControlSchemeName;
         this.dutyUnitID = dutyUnitID;
         this.dutyUnitName = dutyUnitName;
         this.dutyPersonID = dutyPersonID;
         this.dutyPersonName = dutyPersonName;
         this.manageStartDate = manageStartDate;
         this.manageEndDate = manageEndDate;
         this.funds = funds;
         this.material = material;
         this.controlRequirements = controlRequirements;
         this.securityArrangement = securityArrangement;
         this.contingencyPlan = contingencyPlan;
         this.riskSiteID = riskSiteID;
         this.riskSiteName = riskSiteName;
         this.controlObjectID = controlObjectID;
         this.controlObjectName = controlObjectName;
         this.riskID = riskID;
         this.riskName = riskName;
         this.controlMeasureIDs = controlMeasureIDs;
         this.attachFileName = attachFileName;
         this.attachID = attachID;
         this.createDate = createDate;
         this.createrID = createrID;
         this.createrName = createrName;
         this.delflag = delflag;
    }


    //属性get set方法
    @JsonIgnore
    public String getID() {
        return this.ID;
    }
    @JsonIgnore
    public void setID(String ID) {
        this.ID = ID;
    }
    @JsonIgnore
    public String getFrameWorkID(){return frameWorkID;}
    @JsonIgnore
    public void setFrameWorkID(String frameWorkID){this.frameWorkID = frameWorkID;}
    @JsonIgnore
    public String getCoalMineName(){return coalMineName;}
    @JsonIgnore
    public void setCoalMineName(String coalMineName){this.coalMineName = coalMineName;}
    @JsonIgnore
    public String getRiskControlSchemeName() {
        return this.riskControlSchemeName;
    }
    @JsonIgnore
    public void setRiskControlSchemeName(String riskControlSchemeName) {
        this.riskControlSchemeName = riskControlSchemeName;
    }
    @JsonIgnore
    public String getDutyUnitID() {
        return this.dutyUnitID;
    }
    @JsonIgnore
    public void setDutyUnitID(String dutyUnitID) {
        this.dutyUnitID = dutyUnitID;
    }
    @JsonIgnore
    public String getDutyUnitName() {
        return this.dutyUnitName;
    }
    @JsonIgnore
    public void setDutyUnitName(String dutyUnitName) {
        this.dutyUnitName = dutyUnitName;
    }
    @JsonIgnore
    public String getDutyPersonID() {
        return this.dutyPersonID;
    }
    @JsonIgnore
    public void setDutyPersonID(String dutyPersonID) {
        this.dutyPersonID = dutyPersonID;
    }
    @JsonIgnore
    public String getDutyPersonName() {
        return this.dutyPersonName;
    }
    @JsonIgnore
    public void setDutyPersonName(String dutyPersonName) {
        this.dutyPersonName = dutyPersonName;
    }
    @JsonIgnore
    public java.sql.Date getManageStartDate() {
        return this.manageStartDate;
    }
    @JsonIgnore
    public void setManageStartDate(java.sql.Date manageStartDate) {
        this.manageStartDate = manageStartDate;
    }
    @JsonIgnore
    public java.sql.Date getManageEndDate() {
        return this.manageEndDate;
    }
    @JsonIgnore
    public void setManageEndDate(java.sql.Date manageEndDate) {
        this.manageEndDate = manageEndDate;
    }
    @JsonIgnore
    public String getFunds() {
        return this.funds;
    }
    @JsonIgnore
    public void setFunds(String funds) {
        this.funds = funds;
    }
    @JsonIgnore
    public String getMaterial() {
        return this.material;
    }
    @JsonIgnore
    public void setMaterial(String material) {
        this.material = material;
    }
    @JsonIgnore
    public String getControlRequirements() {
        return this.controlRequirements;
    }
    @JsonIgnore
    public void setControlRequirements(String controlRequirements) {
        this.controlRequirements = controlRequirements;
    }
    @JsonIgnore
    public String getSecurityArrangement() {
        return this.securityArrangement;
    }
    @JsonIgnore
    public void setSecurityArrangement(String securityArrangement) {
        this.securityArrangement = securityArrangement;
    }
    @JsonIgnore
    public String getContingencyPlan() {
        return this.contingencyPlan;
    }
    @JsonIgnore
    public void setContingencyPlan(String contingencyPlan) {
        this.contingencyPlan = contingencyPlan;
    }
    @JsonIgnore
    public java.sql.Timestamp getCreateDate() {
        return this.createDate;
    }
    @JsonIgnore
    public void setCreateDate(java.sql.Timestamp createDate) {
        this.createDate = createDate;
    }
    @JsonIgnore
    public String getCreaterID() {
        return this.createrID;
    }
    @JsonIgnore
    public void setCreaterID(String createrID) {
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
    public String getDelflag() {
        return this.delflag;
    }
    @JsonIgnore
    public void setDelflag(String delflag) {
        this.delflag = delflag;
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
    public String getRiskSiteID(){return riskSiteID;}
    @JsonIgnore
    public void setRiskSiteID(String riskSiteID){this.riskSiteID = riskSiteID;}
    @JsonIgnore
    public String getRiskSiteName(){return riskSiteName;}
    @JsonIgnore
    public void setRiskSiteName(String riskSiteName){this.riskSiteName = riskSiteName;}
    @JsonIgnore
    public String getControlObjectID(){return controlObjectID;}
    @JsonIgnore
    public void setControlObjectID(String controlObjectID){this.controlObjectID=controlObjectID;}
    @JsonIgnore
    public String getControlObjectName(){return controlObjectName;}
    @JsonIgnore
    public void setControlObjectName(String controlObjectName){this.controlObjectName = controlObjectName;}
    @JsonIgnore
    public String getRiskID(){return riskID;}
    @JsonIgnore
    public void setRiskID(String riskID){this.riskID = riskID;}
    @JsonIgnore
    public String getRiskName(){return riskName;}
    @JsonIgnore
    public void setRiskName(String riskName){this.riskName = riskName;}
    @JsonIgnore
    public String getControlMeasureIDs(){return controlMeasureIDs;}
    @JsonIgnore
    public void setControlMeasureIDs(String controlMeasureIDs){this.controlMeasureIDs = controlMeasureIDs;}
    @JsonIgnore
    public String getAttachFileName(){return attachFileName;}
    @JsonIgnore
    public void setAttachFileName(String attachFileName){this.attachFileName = attachFileName;}
    @JsonIgnore
    public  String getAttachID(){return attachID;}
    @JsonIgnore
    public void setAttachID(String attachID){this.attachID = attachID;}



}