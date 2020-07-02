package cn.com.kingc.risk.model;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:对应数据库的 表
 *
 * @author
 * @date 2017-11-22 14:14:47 中国标准时间
 */
public class Riskdegreeitem implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("riskDegreeID")
    private Integer riskDegreeID;
    @JsonProperty("riskDegreeItemID")
    private Integer riskDegreeItemID;
    @JsonProperty("riskLevelSettingID")
    private Integer riskLevelSettingID;
    @JsonProperty("riskRangMIX")
    private Integer riskRangMIX;
    @JsonProperty("riskRangMAX")
    private Integer riskRangMAX;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    //页面大小
    @JsonProperty("pageSize")
    private Integer pagesize;
    //页码
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("mRiskLevelSetting")
    private Riskleversetting mRiskLevelSetting;

    //无参构造方法
    public Riskdegreeitem() {
    }

    //带参构造方法
    public Riskdegreeitem(Integer riskDegreeID, Integer riskDegreeItemID, Integer riskLevelSettingID, Integer riskRangMIX, Integer riskRangMAX, String coalMineName, String frameWorkID) {

        this.riskDegreeID = riskDegreeID;
        this.riskDegreeItemID = riskDegreeItemID;
        this.riskLevelSettingID = riskLevelSettingID;
        this.riskRangMIX = riskRangMIX;
        this.riskRangMAX = riskRangMAX;
        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getRiskDegreeID() {
        return this.riskDegreeID;
    }

    @JsonIgnore
    public void setRiskDegreeID(Integer riskDegreeID) {
        this.riskDegreeID = riskDegreeID;
    }

    @JsonIgnore
    public Integer getRiskDegreeItemID() {
        return this.riskDegreeItemID;
    }

    @JsonIgnore
    public void setRiskDegreeItemID(Integer riskDegreeItemID) {
        this.riskDegreeItemID = riskDegreeItemID;
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
    public Integer getRiskRangMIX() {
        return this.riskRangMIX;
    }

    @JsonIgnore
    public void setRiskRangMIX(Integer riskRangMIX) {
        this.riskRangMIX = riskRangMIX;
    }

    @JsonIgnore
    public Integer getRiskRangMAX() {
        return this.riskRangMAX;
    }

    @JsonIgnore
    public void setRiskRangMAX(Integer riskRangMAX) {
        this.riskRangMAX = riskRangMAX;
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
    public String getFrameWorkID() {
        return this.frameWorkID;
    }

    @JsonIgnore
    public void setFrameWorkID(String frameWorkID) {
        this.frameWorkID = frameWorkID;
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
    public Riskleversetting getmRiskLevelSetting() {
        return mRiskLevelSetting;
    }
    @JsonIgnore
    public void setmRiskLevelSetting(Riskleversetting mRiskLevelSetting) {
        this.mRiskLevelSetting = mRiskLevelSetting;
    }
}