package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class RisksiteByAcction  implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("t_risksiteID")
    private Integer t_risksiteID;
    @JsonProperty("hazardID")
    private Integer hazardID;
    @JsonProperty("hazardUUID")
    private String hazardUUID;
    @JsonProperty("h_risksiteID")
    private Integer h_risksiteID;
    @JsonProperty("tname")
    private String tname;
    @JsonProperty("risksitename")
    private String risksitename;
    @JsonProperty("riskhardname")
    private String riskhardname;
    @JsonProperty("damageType")
    private String damageType;
    @JsonProperty("riskLevelSettingID")
    private Integer riskLevelSettingID;
    @JsonProperty("riskType")
    private String riskType;
    @JsonProperty("majorType")
    private String majorType;
    @JsonProperty("hazardDesc")
    private String hazardDesc;
    @JsonProperty("lastModifyVersion")
    private String  lastModifyVersion;
    @JsonProperty("stadate")
    private String stadate;
    @JsonProperty("enddate")
    private String enddate;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;

    public RisksiteByAcction(){

    }
    @JsonIgnore
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    @JsonIgnore
    public String getFrameWorkID() {
        return frameWorkID;
    }
    @JsonIgnore
    public void setFrameWorkID(String frameWorkID) {
        this.frameWorkID = frameWorkID;
    }
    @JsonIgnore
    public String getCoalMineName() {
        return coalMineName;
    }
    @JsonIgnore
    public void setCoalMineName(String coalMineName) {
        this.coalMineName = coalMineName;
    }
    @JsonIgnore
    public Integer getT_risksiteID() {
        return t_risksiteID;
    }
    @JsonIgnore
    public void setT_risksiteID(Integer t_risksiteID) {
        this.t_risksiteID = t_risksiteID;
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
    public Integer getH_risksiteID() {
        return h_risksiteID;
    }
    @JsonIgnore
    public void setH_risksiteID(Integer h_risksiteID) {
        this.h_risksiteID = h_risksiteID;
    }
    @JsonIgnore
    public String getTname() {
        return tname;
    }
    @JsonIgnore
    public void setTname(String tname) {
        this.tname = tname;
    }
    @JsonIgnore
    public String getRisksitename() {
        return risksitename;
    }
    @JsonIgnore
    public void setRisksitename(String risksitename) {
        this.risksitename = risksitename;
    }
    @JsonIgnore
    public String getRiskhardname() {
        return riskhardname;
    }
    @JsonIgnore
    public void setRiskhardname(String riskhardname) {
        this.riskhardname = riskhardname;
    }
    @JsonIgnore
    public String getDamageType() {
        return damageType;
    }
    @JsonIgnore
    public void setDamageType(String damageType) {
        this.damageType = damageType;
    }
    @JsonIgnore
    public Integer getRiskLevelSettingID() {
        return riskLevelSettingID;
    }
    @JsonIgnore
    public void setRiskLevelSettingID(Integer riskLevelSettingID) {
        this.riskLevelSettingID = riskLevelSettingID;
    }
    @JsonIgnore
    public String getRiskType() {
        return riskType;
    }
    @JsonIgnore
    public void setRiskType(String riskType) {
        this.riskType = riskType;
    }
    @JsonIgnore
    public String getMajorType() {
        return majorType;
    }
    @JsonIgnore
    public void setMajorType(String majorType) {
        this.majorType = majorType;
    }
    @JsonIgnore
    public String getHazardDesc() {
        return hazardDesc;
    }
    @JsonIgnore
    public void setHazardDesc(String hazardDesc) {
        this.hazardDesc = hazardDesc;
    }
    @JsonIgnore
    public String getLastModifyVersion() {
        return lastModifyVersion;
    }
    @JsonIgnore
    public void setLastModifyVersion(String lastModifyVersion) {
        this.lastModifyVersion = lastModifyVersion;
    }
    @JsonIgnore
    public String getStadate() {
        return stadate;
    }
    @JsonIgnore
    public void setStadate(String stadate) {
        this.stadate = stadate;
    }
    @JsonIgnore
    public String getEnddate() {
        return enddate;
    }
    @JsonIgnore
    public void setEnddate(String enddate) {
        this.enddate = enddate;
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
