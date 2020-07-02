package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

/**
 * Created by admistrator on 2017-09-28.
 */
public class RiskAnalyzeByPlaceType implements Serializable {

    private static final long serialVersionUID = -8202774361928260723L;
    @JsonProperty("riskSiteTypeContent")
    private String riskSiteTypeContent;
    @JsonProperty("places")
    private String places;
    @JsonProperty("riskSiteName")
    private String riskSiteName;
    @JsonProperty("hazardCount")
    private Integer hazardCount;
    @JsonProperty("l1")
    private Integer l1;
    @JsonProperty("l2")
    private Integer l2;
    @JsonProperty("l3")
    private Integer l3;
    @JsonProperty("l4")
    private Integer l4;
    @JsonProperty("wpg")
    private Integer wpg;

    @JsonIgnore
    public String getRiskSiteTypeContent() {
        return riskSiteTypeContent;
    }
    @JsonIgnore
    public void setRiskSiteTypeContent(String riskSiteTypeContent) {
        this.riskSiteTypeContent = riskSiteTypeContent;
    }
    @JsonIgnore
    public String getPlaces() {
        return places;
    }
    @JsonIgnore
    public void setPlaces(String places) {
        this.places = places;
    }
    @JsonIgnore
    public Integer getHazardCount() {
        return hazardCount;
    }
    @JsonIgnore
    public void setHazardCount(Integer hazardCount) {
        this.hazardCount = hazardCount;
    }
    @JsonIgnore
    public Integer getL1() {
        return l1;
    }
    @JsonIgnore
    public void setL1(Integer l1) {
        this.l1 = l1;
    }
    @JsonIgnore
    public Integer getL2() {
        return l2;
    }
    @JsonIgnore
    public void setL2(Integer l2) {
        this.l2 = l2;
    }
    @JsonIgnore
    public Integer getL3() {
        return l3;
    }
    @JsonIgnore
    public void setL3(Integer l3) {
        this.l3 = l3;
    }
    @JsonIgnore
    public Integer getL4() {
        return l4;
    }
    @JsonIgnore
    public void setL4(Integer l4) {
        this.l4 = l4;
    }
    @JsonIgnore
    public Integer getWpg() {
        return wpg;
    }
    @JsonIgnore
    public void setWpg(Integer wpg) {
        this.wpg = wpg;
    }
    @JsonIgnore
    public String getRiskSiteName() {
        return riskSiteName;
    }
    @JsonIgnore
    public void setRiskSiteName(String riskSiteName) {
        this.riskSiteName = riskSiteName;
    }
}
