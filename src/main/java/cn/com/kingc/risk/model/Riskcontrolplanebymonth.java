package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Riskcontrolplanebymonth implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalmineName")
    private String coalMineName;
    @JsonProperty("frameworkID")
    private String frameWorkID;
    @JsonProperty("monthplanContent")
    private String monthPlanContent;
    @JsonProperty("monthplaneID")
    private Integer monthPlaneID;
    @JsonProperty("fyear")
    private Integer fyear;
    @JsonProperty("fMonth")
    private Integer fMonth;
    @JsonProperty("monthplanCreater")
    private String monthPlanCreater;
    @JsonProperty("monthplanCreateUnit")
    private String monthPlanCreateUnit;
    @JsonProperty("monthplanMajorType")
    private String monthPlanMajorType;
    @JsonProperty("monthplanName")
    private String monthPlanName;
    @JsonProperty("monthplanStatus")
    private Boolean monthPlanStatus;
    @JsonProperty("monthplanType")
    private String monthPlanType;
    @JsonProperty("monthPlanFrequency")
    private String monthPlanFrequency;
    @JsonProperty("monthplanUUID")
    private String monthPlanUUID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("mmonthPlanItems")
    private List<Riskcontrolplanebymonthitem> mMonthPlanItems = new ArrayList<>();
    @JsonProperty("mriskControlMeasure")
    private List<Riskcontrolmeasure> mriskControlMeasure = new ArrayList<>();
    @JsonProperty("mRiskHazard")
    private List<Riskhazard> mRiskHazard = new ArrayList<>();
    @Getter
    @Setter
    @JsonProperty
    private String riskSiteName;


    //无参构造方法
    public Riskcontrolplanebymonth() {
    }

    //带参构造方法
    public Riskcontrolplanebymonth(String coalMineName, String frameWorkID, String monthPlanContent, Integer monthPlaneID, Integer fyear, Integer fMonth, String monthPlanCreater, String monthPlanCreateUnit, String monthPlanMajorType, String monthPlanName, Boolean monthPlanStatus, String monthPlanType, String monthPlanUUID) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.monthPlanContent = monthPlanContent;
        this.monthPlaneID = monthPlaneID;
        this.fyear = fyear;
        this.fMonth = fMonth;
        this.monthPlanCreater = monthPlanCreater;
        this.monthPlanCreateUnit = monthPlanCreateUnit;
        this.monthPlanMajorType = monthPlanMajorType;
        this.monthPlanName = monthPlanName;
        this.monthPlanStatus = monthPlanStatus;
        this.monthPlanType = monthPlanType;
        this.monthPlanUUID = monthPlanUUID;
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
    public String getMonthPlanContent() {
        return this.monthPlanContent;
    }

    @JsonIgnore
    public void setMonthPlanContent(String monthPlanContent) {
        this.monthPlanContent = monthPlanContent;
    }

    @JsonIgnore
    public Integer getMonthPlaneID() {
        return this.monthPlaneID;
    }

    @JsonIgnore
    public void setMonthPlaneID(Integer monthPlaneID) {
        this.monthPlaneID = monthPlaneID;
    }

    @JsonIgnore
    public Integer getFyear() {
        return fyear;
    }

    @JsonIgnore
    public void setFyear(Integer fyear) {
        this.fyear = fyear;
    }

    @JsonIgnore
    public Integer getfMonth() {
        return fMonth;
    }

    @JsonIgnore
    public void setfMonth(Integer fMonth) {
        this.fMonth = fMonth;
    }

    @JsonIgnore
    public String getMonthPlanCreater() {
        return this.monthPlanCreater;
    }

    @JsonIgnore
    public void setMonthPlanCreater(String monthPlanCreater) {
        this.monthPlanCreater = monthPlanCreater;
    }

    @JsonIgnore
    public String getMonthPlanCreateUnit() {
        return this.monthPlanCreateUnit;
    }

    @JsonIgnore
    public void setMonthPlanCreateUnit(String monthPlanCreateUnit) {
        this.monthPlanCreateUnit = monthPlanCreateUnit;
    }

    @JsonIgnore
    public String getMonthPlanMajorType() {
        return this.monthPlanMajorType;
    }

    @JsonIgnore
    public void setMonthPlanMajorType(String monthPlanMajorType) {
        this.monthPlanMajorType = monthPlanMajorType;
    }

    @JsonIgnore
    public String getMonthPlanName() {
        return this.monthPlanName;
    }

    @JsonIgnore
    public void setMonthPlanName(String monthPlanName) {
        this.monthPlanName = monthPlanName;
    }

    @JsonIgnore
    public Boolean getMonthPlanStatus() {
        return this.monthPlanStatus;
    }

    @JsonIgnore
    public void setMonthPlanStatus(Boolean monthPlanStatus) {
        this.monthPlanStatus = monthPlanStatus;
    }

    @JsonIgnore
    public String getMonthPlanType() {
        return this.monthPlanType;
    }

    @JsonIgnore
    public void setMonthPlanType(String monthPlanType) {
        this.monthPlanType = monthPlanType;
    }

    @JsonIgnore
    public String getMonthPlanFrequency() {
        return monthPlanFrequency;
    }
    @JsonIgnore
    public void setMonthPlanFrequency(String monthPlanFrequency) {
        this.monthPlanFrequency = monthPlanFrequency;
    }

    @JsonIgnore
    public String getMonthPlanUUID() {
        return this.monthPlanUUID;
    }

    @JsonIgnore
    public void setMonthPlanUUID(String monthPlanUUID) {
        this.monthPlanUUID = monthPlanUUID;
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
    public List<Riskcontrolplanebymonthitem> getmMonthPlanItems() {
        return mMonthPlanItems;
    }

    @JsonIgnore
    public void setmMonthPlanItems(List<Riskcontrolplanebymonthitem> mMonthPlanItems) {
        this.mMonthPlanItems = mMonthPlanItems;
    }

    @JsonIgnore
    public List<Riskcontrolmeasure> getMriskControlMeasure() {
        return mriskControlMeasure;
    }

    @JsonIgnore
    public void setMriskControlMeasure(List<Riskcontrolmeasure> mriskControlMeasure) {
        this.mriskControlMeasure = mriskControlMeasure;
    }

    @JsonIgnore
    public List<Riskhazard> getmRiskHazard() {
        return mRiskHazard;
    }

    @JsonIgnore
    public void setmRiskHazard(List<Riskhazard> mRiskHazard) {
        this.mRiskHazard = mRiskHazard;
    }
}