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
* @date 2018-05-04 13:02:59 中国标准时间
* @author
* @version
*/
public class Riskhazardcontrolrange implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("riskSiteControlRangeID")
        private  Integer riskSiteControlRangeID;
        @JsonProperty("coalMineName")
        private  String coalMineName;
        @JsonProperty("hazardID")
        private  Integer hazardID;
        @JsonProperty("frameWorkID")
        private  String frameWorkID;
        @JsonProperty("hazardUUID")
        private  String hazardUUID;
        @JsonProperty("riskSiteID")
        private  Integer riskSiteID;
        @JsonProperty("riskSiteFullNumber")
        private  String riskSiteFullNumber;
        @JsonProperty("controlRangeName")
        private  String controlRangeName;
        @JsonProperty("controlRangeStartDay")
        private  String controlRangeStartDay;
        @JsonProperty("controlRangeEndDay")
        private  String controlRangeEndDay;
        @JsonProperty("controlRangePinci")
        private  String controlRangePinci;
        @JsonProperty("manageUnit")
        private  String manageUnit;
        @JsonProperty("manageUnitID")
        private  String manageUnitID;
        @JsonProperty("manageDuty")
        private  String manageDuty;
        @JsonProperty("manageDutyID")
        private  String manageDutyID;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;



    //无参构造方法
    public Riskhazardcontrolrange(){}

    //带参构造方法
    public Riskhazardcontrolrange (Integer riskSiteControlRangeID,String coalMineName,Integer hazardID,String frameWorkID,String hazardUUID,Integer riskSiteID,String riskSiteFullNumber,String controlRangeName,String controlRangeStartDay,String controlRangeEndDay,String controlRangePinci,String manageUnit,String manageUnitID,String manageDuty,String manageDutyID){

         this.riskSiteControlRangeID = riskSiteControlRangeID;
         this.coalMineName = coalMineName;
         this.hazardID = hazardID;
         this.frameWorkID = frameWorkID;
         this.hazardUUID = hazardUUID;
         this.riskSiteID = riskSiteID;
         this.riskSiteFullNumber = riskSiteFullNumber;
         this.controlRangeName = controlRangeName;
         this.controlRangeStartDay = controlRangeStartDay;
         this.controlRangeEndDay = controlRangeEndDay;
         this.controlRangePinci = controlRangePinci;
         this.manageUnit = manageUnit;
         this.manageUnitID = manageUnitID;
         this.manageDuty = manageDuty;
         this.manageDutyID = manageDutyID;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getRiskSiteControlRangeID() {
        return this.riskSiteControlRangeID;
    }
    @JsonIgnore
    public void setRiskSiteControlRangeID(Integer riskSiteControlRangeID) {
        this.riskSiteControlRangeID = riskSiteControlRangeID;
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
    public Integer getHazardID() {
        return this.hazardID;
    }
    @JsonIgnore
    public void setHazardID(Integer hazardID) {
        this.hazardID = hazardID;
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
    public String getRiskSiteFullNumber() {
        return this.riskSiteFullNumber;
    }
    @JsonIgnore
    public void setRiskSiteFullNumber(String riskSiteFullNumber) {
        this.riskSiteFullNumber = riskSiteFullNumber;
    }
    @JsonIgnore
    public String getControlRangeName() {
        return this.controlRangeName;
    }
    @JsonIgnore
    public void setControlRangeName(String controlRangeName) {
        this.controlRangeName = controlRangeName;
    }
    @JsonIgnore
    public String getControlRangeStartDay() {
        return this.controlRangeStartDay;
    }
    @JsonIgnore
    public void setControlRangeStartDay(String controlRangeStartDay) {
        this.controlRangeStartDay = controlRangeStartDay;
    }
    @JsonIgnore
    public String getControlRangeEndDay() {
        return this.controlRangeEndDay;
    }
    @JsonIgnore
    public void setControlRangeEndDay(String controlRangeEndDay) {
        this.controlRangeEndDay = controlRangeEndDay;
    }
    @JsonIgnore
    public String getControlRangePinci() {
        return this.controlRangePinci;
    }
    @JsonIgnore
    public void setControlRangePinci(String controlRangePinci) {
        this.controlRangePinci = controlRangePinci;
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
    public String getManageUnitID() {
        return this.manageUnitID;
    }
    @JsonIgnore
    public void setManageUnitID(String manageUnitID) {
        this.manageUnitID = manageUnitID;
    }
    @JsonIgnore
    public String getManageDuty() {
        return this.manageDuty;
    }
    @JsonIgnore
    public void setManageDuty(String manageDuty) {
        this.manageDuty = manageDuty;
    }
    @JsonIgnore
    public String getManageDutyID() {
        return this.manageDutyID;
    }
    @JsonIgnore
    public void setManageDutyID(String manageDutyID) {
        this.manageDutyID = manageDutyID;
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