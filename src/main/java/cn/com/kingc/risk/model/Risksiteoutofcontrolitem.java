package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.List;

public class Risksiteoutofcontrolitem implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("checkRecordID")
    private Integer checkRecordID;
    @JsonProperty("itemID")
    private Integer itemID;
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("hazardID")
    private Integer hazardID;
    @JsonProperty("hazard")
    private Riskhazard hazard;
    @JsonProperty("checkQuestion")
    private String checkQuestion;
    @JsonProperty("outOfControlStatus")
    private  boolean outOfControlStatus;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("accthes")
    private List<Risksiteoutofcontrolattachment> accthes;
    @JsonProperty("risksiteName")
    private String risksiteName;
    //无参构造方法
    public Risksiteoutofcontrolitem() {
    }

    //带参构造方法
    public Risksiteoutofcontrolitem(String coalMineName, String frameWorkID, Integer checkRecordID, Integer itemID, Riskhazard hazard, String checkQuestion,String risksiteName) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.checkRecordID = checkRecordID;
        this.itemID = itemID;
        this.hazard = hazard;
        this.checkQuestion = checkQuestion;
        this.risksiteName = risksiteName;
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
    public Integer getItemID() {
        return this.itemID;
    }

    @JsonIgnore
    public void setItemID(Integer itemID) {
        this.itemID = itemID;
    }

    @JsonIgnore
    public Riskhazard getHazard() {
        return this.hazard;
    }

    @JsonIgnore
    public void setHazard(Riskhazard hazard) {
        this.hazard = hazard;
    }

    @JsonIgnore
    public String getCheckQuestion() {
        return this.checkQuestion;
    }

    @JsonIgnore
    public void setCheckQuestion(String checkQuestion) {
        this.checkQuestion = checkQuestion;
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
    public List<Risksiteoutofcontrolattachment> getAccthes() {
        return accthes;
    }

    @JsonIgnore
    public void setAccthes(List<Risksiteoutofcontrolattachment> accthes) {
        this.accthes = accthes;
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
    public Integer getRiskSiteID() {
        return riskSiteID;
    }
    @JsonIgnore
    public void setRiskSiteID(Integer riskSiteID) {
        this.riskSiteID = riskSiteID;
    }
    @JsonIgnore
    public boolean isOutOfControlStatus() {
        return outOfControlStatus;
    }
    @JsonIgnore
    public void setOutOfControlStatus(boolean outOfControlStatus) {
        this.outOfControlStatus = outOfControlStatus;
    }
    @JsonIgnore
    public String getRisksiteName() {
        return risksiteName;
    }
    @JsonIgnore
    public void setRisksiteName(String risksiteName) {
        this.risksiteName = risksiteName;
    }
}