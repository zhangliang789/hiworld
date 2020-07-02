package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Riskidentificationbyyearentry implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    @JsonProperty("coalMineName")
    private String coalMineName;

    @JsonProperty("frameWorkID")
    private String frameWorkID;
    //主表ID
    @JsonProperty("riskidentificationYearID")
    private Integer riskIdentificationYearID;
    //ID
    @JsonProperty("riskidentificationYearEntryID")
    private Integer riskIdentificationYearEntryID;
    //关联风险ID
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;

    @JsonProperty("mriskSite")
    private Risksite mRiskSite;





    //无参构造方法
    public Riskidentificationbyyearentry() {
    }




    //带参构造方法
    public Riskidentificationbyyearentry(String coalMineName, String frameWorkID, Integer riskIdentificationYearID, Integer riskIdentificationYearEntryID, Integer riskSiteID) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.riskIdentificationYearID = riskIdentificationYearID;
        this.riskIdentificationYearEntryID = riskIdentificationYearEntryID;

        this.riskSiteID = riskSiteID;
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
    public Integer getRiskIdentificationYearID() {
        return this.riskIdentificationYearID;
    }
    @JsonIgnore
    public void setRiskIdentificationYearID(Integer riskIdentificationYearID) {
        this.riskIdentificationYearID = riskIdentificationYearID;
    }
    @JsonIgnore
    public Integer getRiskIdentificationYearEntryID() {
        return this.riskIdentificationYearEntryID;
    }
    @JsonIgnore
    public void setRiskIdentificationYearEntryID(Integer riskIdentificationYearEntryID) {
        this.riskIdentificationYearEntryID = riskIdentificationYearEntryID;
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
    public Risksite getmRiskSite() {
        return mRiskSite;
    }


    @JsonIgnore
    public void setmRiskSite(Risksite mRiskSite) {
        this.mRiskSite = mRiskSite;
    }
}