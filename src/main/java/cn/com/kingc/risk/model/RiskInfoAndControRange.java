package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by admistrator on 2018-05-05.
 */
public class RiskInfoAndControRange implements Serializable {
    private static final long serialVersionUID = 4362333258623016542L;
    @JsonProperty("placeName")
    private String placeName;

    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("riskSiteFullNumber")
    private String riskSiteFullNumber;

    @JsonProperty("hazardID")
    private Integer hazardID;
    @JsonProperty("hazardUUID")
    private String hazardUUID;


    @JsonProperty("mRange")
    private List<Riskhazardcontrolrange> mRange=new ArrayList<>();

    @JsonIgnore
    public String getPlaceName() {
        return placeName;
    }
    @JsonIgnore
    public void setPlaceName(String placeName) {
        this.placeName = placeName;
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
    public List<Riskhazardcontrolrange> getmRange() {
        return mRange;
    }
    @JsonIgnore
    public void setmRange(List<Riskhazardcontrolrange> mRange) {
        this.mRange = mRange;
    }
    @JsonIgnore
    public Integer getHazardID() {
        return hazardID;
    }
    @JsonIgnore
    public void setHazardID(Integer hazardID) {
        this.hazardID = hazardID;
    }
    @JsonIgnore
    public String getHazardUUID() {
        return hazardUUID;
    }
    @JsonIgnore
    public void setHazardUUID(String hazardUUID) {
        this.hazardUUID = hazardUUID;
    }
    @JsonIgnore
    public String getRiskSiteFullNumber() {
        return riskSiteFullNumber;
    }
    @JsonIgnore
    public void setRiskSiteFullNumber(String riskSiteFullNumber) {
        this.riskSiteFullNumber = riskSiteFullNumber;
    }
}
