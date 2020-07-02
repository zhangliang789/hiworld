package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Riskcontrolanalyzeitem implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalmineName")
    private String coalMineName;
    @JsonProperty("frameworkID")
    private String frameWorkID;
    @JsonProperty("manalyzeID")
    private Integer mAnalyzeID;
    @JsonProperty("itemID")
    private Integer itemID;
    @JsonProperty("itemUUID")
    private String itemUUID;
    @JsonProperty("keyContent")
    private String keyContent;
    @JsonProperty("lostcontrolItemID")
    private Integer lostControlItemID;
    @JsonProperty("lostcontrolItem")
    private Risksiteoutofcontrolitem lostControlItem;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("oHiddenTrouble")
    private boolean oHiddenTrouble;
    @JsonProperty("oMeasure")
    private boolean oMeasure;
    @JsonProperty("oRiskLevel")
    private boolean oRiskLevel;
    @JsonProperty("oHiddenTroubleID")
    private Integer oHiddenTroubleID;

    //无参构造方法
    public Riskcontrolanalyzeitem() {
    }

    //带参构造方法
    public Riskcontrolanalyzeitem(String coalMineName, String frameWorkID, Integer mAnalyzeID, Integer itemID, String itemUUID, String keyContent) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.mAnalyzeID = mAnalyzeID;
        this.itemID = itemID;
        this.itemUUID = itemUUID;
        this.keyContent = keyContent;
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
    public Integer getMAnalyzeID() {
        return this.mAnalyzeID;
    }

    @JsonIgnore
    public void setMAnalyzeID(Integer mAnalyzeID) {
        this.mAnalyzeID = mAnalyzeID;
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
    public String getItemUUID() {
        return this.itemUUID;
    }

    @JsonIgnore
    public void setItemUUID(String itemUUID) {
        this.itemUUID = itemUUID;
    }

    @JsonIgnore
    public String getKeyContent() {
        return this.keyContent;
    }

    @JsonIgnore
    public void setKeyContent(String keyContent) {
        this.keyContent = keyContent;
    }

    @JsonIgnore
    public Risksiteoutofcontrolitem getLostControlItem() {
        return this.lostControlItem;
    }

    @JsonIgnore
    public void setLostControlItem(Risksiteoutofcontrolitem lostControlItem) {
        this.lostControlItem = lostControlItem;
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
    public Integer getmAnalyzeID() {
        return mAnalyzeID;
    }

    @JsonIgnore
    public void setmAnalyzeID(Integer mAnalyzeID) {
        this.mAnalyzeID = mAnalyzeID;
    }

    @JsonIgnore
    public Integer getLostControlItemID() {
        return lostControlItemID;
    }

    @JsonIgnore
    public void setLostControlItemID(Integer lostControlItemID) {
        this.lostControlItemID = lostControlItemID;
    }
    @JsonIgnore
    public boolean isoHiddenTrouble() {
        return oHiddenTrouble;
    }
    @JsonIgnore
    public void setoHiddenTrouble(boolean oHiddenTrouble) {
        this.oHiddenTrouble = oHiddenTrouble;
    }
    @JsonIgnore
    public boolean isoMeasure() {
        return oMeasure;
    }
    @JsonIgnore
    public void setoMeasure(boolean oMeasure) {
        this.oMeasure = oMeasure;
    }
    @JsonIgnore
    public boolean isoRiskLevel() {
        return oRiskLevel;
    }
    @JsonIgnore
    public void setoRiskLevel(boolean oRiskLevel) {
        this.oRiskLevel = oRiskLevel;
    }
    @JsonIgnore
    public Integer getoHiddenTroubleID() {
        return oHiddenTroubleID;
    }
    @JsonIgnore
    public void setoHiddenTroubleID(Integer oHiddenTroubleID) {
        this.oHiddenTroubleID = oHiddenTroubleID;
    }

}