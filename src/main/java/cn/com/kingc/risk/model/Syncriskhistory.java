package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 表
* @date 2018-01-08 15:04:18 中国标准时间
* @author
* @version
*/
public class Syncriskhistory implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("coalMineName")
        private  String coalMineName;
        @JsonProperty("frameWorkID")
        private  String frameWorkID;
        @JsonProperty("fSynHistoryID")
        private  Integer fSynHistoryID;
        @JsonProperty("riskSiteID")
        private  Integer riskSiteID;
        @JsonProperty("riskSiteUUID")
        private  String riskSiteUUID;
        @JsonProperty("parentID")
        private  Integer parentID;
        @JsonProperty("parentNumber")
        private  String parentNumber;
        @JsonProperty("fullNumber")
        private  String fullNumber;
        @JsonProperty("hazardUUID")
        private  String hazardUUID;
        @JsonProperty("hazardID")
        private  Integer hazardID;
        //是否上报
        @JsonProperty("fSynStatus")
        private  Boolean fSynStatus;
        //上报时间
        @JsonProperty("fSynTime")
        private  java.sql.Timestamp fSynTime;
        //上报人ID
        @JsonProperty("fSynEmpID")
        private  Integer fSynEmpID;
        //上报人姓名
        @JsonProperty("fSynEmpName")
        private  String fSynEmpName;
        //上报服务返回值
        @JsonProperty("fSynResultCode")
        private  String fSynResultCode;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

    //无参构造方法
    public Syncriskhistory(){}

    //带参构造方法
    public Syncriskhistory (String coalMineName,String frameWorkID,Integer fSynHistoryID,Integer riskSiteID,String riskSiteUUID,Integer parentID,String parentNumber,String fullNumber,String hazardUUID,Integer hazardID,Boolean fSynStatus,java.sql.Timestamp fSynTime,Integer fSynEmpID,String fSynEmpName,String fSynResultCode){

         this.coalMineName = coalMineName;
         this.frameWorkID = frameWorkID;
         this.fSynHistoryID = fSynHistoryID;
         this.riskSiteID = riskSiteID;
         this.riskSiteUUID = riskSiteUUID;
         this.parentID = parentID;
         this.parentNumber = parentNumber;
         this.fullNumber = fullNumber;
         this.hazardUUID = hazardUUID;
         this.hazardID = hazardID;
         this.fSynStatus = fSynStatus;
         this.fSynTime = fSynTime;
         this.fSynEmpID = fSynEmpID;
         this.fSynEmpName = fSynEmpName;
         this.fSynResultCode = fSynResultCode;
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
    public Integer getFSynHistoryID() {
        return this.fSynHistoryID;
    }
    @JsonIgnore
    public void setFSynHistoryID(Integer fSynHistoryID) {
        this.fSynHistoryID = fSynHistoryID;
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
    public Integer getParentID() {
        return this.parentID;
    }
    @JsonIgnore
    public void setParentID(Integer parentID) {
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
    public String getFullNumber() {
        return this.fullNumber;
    }
    @JsonIgnore
    public void setFullNumber(String fullNumber) {
        this.fullNumber = fullNumber;
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
    public Integer getHazardID() {
        return this.hazardID;
    }
    @JsonIgnore
    public void setHazardID(Integer hazardID) {
        this.hazardID = hazardID;
    }
    @JsonIgnore
    public Boolean getFSynStatus() {
        return this.fSynStatus;
    }
    @JsonIgnore
    public void setFSynStatus(Boolean fSynStatus) {
        this.fSynStatus = fSynStatus;
    }
    @JsonIgnore
    public java.sql.Timestamp getFSynTime() {
        return this.fSynTime;
    }
    @JsonIgnore
    public void setFSynTime(java.sql.Timestamp fSynTime) {
        this.fSynTime = fSynTime;
    }
    @JsonIgnore
    public Integer getFSynEmpID() {
        return this.fSynEmpID;
    }
    @JsonIgnore
    public void setFSynEmpID(Integer fSynEmpID) {
        this.fSynEmpID = fSynEmpID;
    }
    @JsonIgnore
    public String getFSynEmpName() {
        return this.fSynEmpName;
    }
    @JsonIgnore
    public void setFSynEmpName(String fSynEmpName) {
        this.fSynEmpName = fSynEmpName;
    }
    @JsonIgnore
    public String getFSynResultCode() {
        return this.fSynResultCode;
    }
    @JsonIgnore
    public void setFSynResultCode(String fSynResultCode) {
        this.fSynResultCode = fSynResultCode;
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