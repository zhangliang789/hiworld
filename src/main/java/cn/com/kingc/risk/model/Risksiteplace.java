package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Risksiteplace implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("riskSiteUUID")
    private String riskSiteUUID;
    @JsonProperty("addressID")
    private String addressID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;

    //无参构造方法
    public Risksiteplace() {
    }

    //带参构造方法
    public Risksiteplace(Integer riskSiteID, String riskSiteUUID, String addressID) {

        this.riskSiteID = riskSiteID;
        this.riskSiteUUID = riskSiteUUID;
        this.addressID = addressID;
    }


    //属性get set方法
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
    public String getAddressID() {
        return this.addressID;
    }

    @JsonIgnore
    public void setAddressID(String addressID) {
        this.addressID = addressID;
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