package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 表
* @date 2018-01-08 15:05:00 中国标准时间
* @author
* @version
*/
public class Syncspecialhistory implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("coalMineName")
        private  String coalMineName;
        @JsonProperty("frameWorkID")
        private  String frameWorkID;
        @JsonProperty("fSynHistoryID")
        private  Integer fSynHistoryID;
        @JsonProperty("riskIdentificationSpeciallyID")
        private  String riskIdentificationSpeciallyID;
        @JsonProperty("fSynStatus")
        private  Boolean fSynStatus;
        @JsonProperty("fSynTime")
        private  java.sql.Timestamp fSynTime;
        @JsonProperty("fSynEmpID")
        private  Integer fSynEmpID;
        @JsonProperty("fSynEmpName")
        private  String fSynEmpName;
        @JsonProperty("fSynResultCode")
        private  String fSynResultCode;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

    //无参构造方法
    public Syncspecialhistory(){}

    //带参构造方法
    public Syncspecialhistory (String coalMineName,String frameWorkID,Integer fSynHistoryID,String riskIdentificationSpeciallyID,Boolean fSynStatus,java.sql.Timestamp fSynTime,Integer fSynEmpID,String fSynEmpName,String fSynResultCode){

         this.coalMineName = coalMineName;
         this.frameWorkID = frameWorkID;
         this.fSynHistoryID = fSynHistoryID;
         this.riskIdentificationSpeciallyID = riskIdentificationSpeciallyID;
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
    public String getRiskIdentificationSpeciallyID() {
        return this.riskIdentificationSpeciallyID;
    }
    @JsonIgnore
    public void setRiskIdentificationSpeciallyID(String riskIdentificationSpeciallyID) {
        this.riskIdentificationSpeciallyID = riskIdentificationSpeciallyID;
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