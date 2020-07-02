package cn.com.kingc.risk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:视图:specialevaluatereport
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 视图:specialevaluatereport表
* @date 2018-01-08 13:24:53 中国标准时间
* @author
* @version
*/
public class SynSpecialevaluatereport implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("id")
        private  String id;
        @JsonProperty("mineCode")
        private  String mineCode;
        @JsonProperty("mineName")
        private  String mineName;
        @JsonProperty("name")
        private  String name;
        @JsonProperty("leader")
        private  String leader;
        @JsonProperty("leaderType")
        private  String leaderType;
        @JsonProperty("evalTime")
        private  String evalTime;
        @JsonProperty("participants")
        private  String participants;
        @JsonProperty("location")
        private  String location;
        @JsonProperty("remark")
        private  String remark;
        @JsonProperty("evalType")
        private  String evalType;
        @JsonProperty("riskdatas")
        private List<SynSpecialevaluatereportEntry> riskdatas=new ArrayList<>();
        @JsonProperty("riskSiteID")
        private Integer riskSiteID;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

    //无参构造方法
    public SynSpecialevaluatereport(){}

    //带参构造方法
    public SynSpecialevaluatereport(String id, String mineCode, String mineName, String name, String leader, String leaderType, String evalTime, String participants, String location, String remark, String evalType,Integer riskSiteID){

         this.id = id;
         this.mineCode = mineCode;
         this.mineName = mineName;
         this.name = name;
         this.leader = leader;
         this.leaderType = leaderType;
         this.evalTime = evalTime;
         this.participants = participants;
         this.location = location;
         this.remark = remark;
         this.evalType = evalType;
         this.riskSiteID = riskSiteID;

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
    public String getMineCode() {
        return this.mineCode;
    }
    @JsonIgnore
    public void setMineCode(String mineCode) {
        this.mineCode = mineCode;
    }
    @JsonIgnore
    public String getMineName() {
        return this.mineName;
    }
    @JsonIgnore
    public void setMineName(String mineName) {
        this.mineName = mineName;
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
    public String getLeader() {
        return this.leader;
    }
    @JsonIgnore
    public void setLeader(String leader) {
        this.leader = leader;
    }
    @JsonIgnore
    public String getLeaderType() {
        return this.leaderType;
    }
    @JsonIgnore
    public void setLeaderType(String leaderType) {
        this.leaderType = leaderType;
    }
    @JsonIgnore
    public String getEvalTime() {
        return this.evalTime;
    }
    @JsonIgnore
    public void setEvalTime(String evalTime) {
        this.evalTime = evalTime;
    }
    @JsonIgnore
    public String getParticipants() {
        return this.participants;
    }
    @JsonIgnore
    public void setParticipants(String participants) {
        this.participants = participants;
    }
    @JsonIgnore
    public String getLocation() {
        return this.location;
    }
    @JsonIgnore
    public void setLocation(String location) {
        this.location = location;
    }
    @JsonIgnore
    public String getRemark() {
        return this.remark;
    }
    @JsonIgnore
    public void setRemark(String remark) {
        this.remark = remark;
    }
    @JsonIgnore
    public String getEvalType() {
        return this.evalType;
    }
    @JsonIgnore
    public void setEvalType(String evalType) {
        this.evalType = evalType;
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
    public Integer getRiskSiteID(){return riskSiteID;}
    @JsonIgnore
    public void setRiskSiteID(Integer riskSiteID){this.riskSiteID = riskSiteID;}
}