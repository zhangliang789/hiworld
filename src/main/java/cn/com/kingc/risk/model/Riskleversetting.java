package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 表
* @date 2017-11-22 14:06:05 中国标准时间
* @author
* @version
*/
public class Riskleversetting implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("coalMineName")
        private  String coalMineName;
        @JsonProperty("frameWorkID")
        private  String frameWorkID;
        @JsonProperty("riskLevelSettingID")
        private  Integer riskLevelSettingID;
        @JsonProperty("riskColor")
        private  String riskColor;
        @JsonProperty("riskLevel")
        private  String riskLevel;
        @JsonProperty("riskOrder")
        private  Integer riskOrder;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

    //无参构造方法
    public Riskleversetting(){}

    //带参构造方法
    public Riskleversetting (String coalMineName,String frameWorkID,Integer riskLevelSettingID,String riskColor,String riskLevel,Integer riskOrder){

         this.coalMineName = coalMineName;
         this.frameWorkID = frameWorkID;
         this.riskLevelSettingID = riskLevelSettingID;
         this.riskColor = riskColor;
         this.riskLevel = riskLevel;
         this.riskOrder = riskOrder;
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
    public Integer getRiskLevelSettingID() {
        return this.riskLevelSettingID;
    }
    @JsonIgnore
    public void setRiskLevelSettingID(Integer riskLevelSettingID) {
        this.riskLevelSettingID = riskLevelSettingID;
    }
    @JsonIgnore
    public String getRiskColor() {
        return this.riskColor;
    }
    @JsonIgnore
    public void setRiskColor(String riskColor) {
        this.riskColor = riskColor;
    }
    @JsonIgnore
    public String getRiskLevel() {
        return this.riskLevel;
    }
    @JsonIgnore
    public void setRiskLevel(String riskLevel) {
        this.riskLevel = riskLevel;
    }
    @JsonIgnore
    public Integer getRiskOrder() {
        return this.riskOrder;
    }
    @JsonIgnore
    public void setRiskOrder(Integer riskOrder) {
        this.riskOrder = riskOrder;
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