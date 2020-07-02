package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.List;

public class Risksiteoutofcontrol implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("checkRecordID")
    private Integer checkRecordID;
    @JsonProperty("createID")
    private Integer createID;
    @JsonProperty("createName")
    private String createName;
    @JsonProperty("checkTime")
    private String checkTime;
    @JsonProperty("endTime")
    private String endTime;
    @JsonProperty("createUnitID")
    private Integer createUnitID;
    @JsonProperty("createUnitName")
    private String createUnitName;
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("mriskSite")
    private Risksite mRiskSite;
    @JsonProperty("majorType")
    private String majorType;
    @JsonProperty("mcontrolitem")
    private List<Risksiteoutofcontrolitem> mControlitem;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("status")
    private Boolean status;
    @JsonProperty("monthPlaneID")
    private Integer monthPlaneID;
    @JsonProperty("monthPlaneItemID")
    private Integer monthPlaneItemID;
    @JsonProperty("riskSiteName")
    private String riskSiteName;


    //无参构造方法
    public Risksiteoutofcontrol() {
    }

    //带参构造方法
    public Risksiteoutofcontrol(String coalMineName, String frameWorkID, Integer checkRecordID, Integer createID, String createName, String checkTime,String endTime,Integer createUnitID, String createUnitName, String majorType) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.checkRecordID = checkRecordID;
        this.createID = createID;
        this.createName = createName;
        this.checkTime = checkTime;
        this.endTime = endTime;
        this.createUnitID = createUnitID;
        this.createUnitName = createUnitName;
        this.majorType = majorType;
        this.status = false;
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
    public Integer getCheckRecordID() {
        return this.checkRecordID;
    }

    @JsonIgnore
    public void setCheckRecordID(Integer checkRecordID) {
        this.checkRecordID = checkRecordID;
    }

    @JsonIgnore
    public Integer getCreateID() {
        return this.createID;
    }

    @JsonIgnore
    public void setCreateID(Integer createID) {
        this.createID = createID;
    }

    @JsonIgnore
    public String getCreateName() {
        return this.createName;
    }

    @JsonIgnore
    public void setCreateName(String createName) {
        this.createName = createName;
    }

    @JsonIgnore
    public String getCheckTime() {
        return this.checkTime;
    }

    @JsonIgnore
    public void setCheckTime(String checkTime) {
        this.checkTime = checkTime;
    }

    @JsonIgnore
    public Integer getCreateUnitID() {
        return this.createUnitID;
    }

    @JsonIgnore
    public void setCreateUnitID(Integer createUnitID) {
        this.createUnitID = createUnitID;
    }

    @JsonIgnore
    public String getCreateUnitName() {
        return this.createUnitName;
    }

    @JsonIgnore
    public void setCreateUnitName(String createUnitName) {
        this.createUnitName = createUnitName;
    }

    @JsonIgnore
    public Risksite getLostRiskSite() {
        return mRiskSite;
    }

    @JsonIgnore
    public void setLostRiskSite(Risksite lostRiskSite) {
        this.mRiskSite = lostRiskSite;
    }

    @JsonIgnore
    public String getMajorType() {
        return this.majorType;
    }

    @JsonIgnore
    public void setMajorType(String majorType) {
        this.majorType = majorType;
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
    public Integer getRiskSiteID() {
        return riskSiteID;
    }

    @JsonIgnore
    public void setRiskSiteID(Integer riskSiteID) {
        this.riskSiteID = riskSiteID;
    }

    @JsonIgnore
    public Risksite getmRiskSite() {
        return mRiskSite;
    }

    @JsonIgnore
    public void setmRiskSite(Risksite mRiskSite) {
        this.mRiskSite = mRiskSite;
    }

    @JsonIgnore
    public List<Risksiteoutofcontrolitem> getmControlitem() {
        return mControlitem;
    }

    @JsonIgnore
    public void setmControlitem(List<Risksiteoutofcontrolitem> mControlitem) {
        this.mControlitem = mControlitem;
    }

    @JsonIgnore
    public Boolean getStatus() {
        return status;
    }

    @JsonIgnore
    public void setStatus(Boolean status) {
        this.status = status;
    }

    @JsonIgnore
    public Integer getMonthPlaneID() {
        return monthPlaneID;
    }

    @JsonIgnore
    public void setMonthPlaneID(Integer monthPlaneID) {
        this.monthPlaneID = monthPlaneID;
    }

    @JsonIgnore
    public Integer getMonthPlaneItemID() {
        return monthPlaneItemID;
    }

    @JsonIgnore
    public void setMonthPlaneItemID(Integer monthPlaneItemID) {
        this.monthPlaneItemID = monthPlaneItemID;
    }

    @JsonIgnore
    public String getRiskSiteName(){return riskSiteName;}

    @JsonIgnore
    public void setRiskSiteName(String riskSiteName){ this.riskSiteName = riskSiteName;}
    @JsonIgnore
    public String getEndTime() { return endTime; }
    @JsonIgnore
    public void setEndTime(String endTime) { this.endTime = endTime; }
}

