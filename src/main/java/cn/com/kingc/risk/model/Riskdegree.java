package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Riskdegree implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalmineName")
    private String coalMineName;
    @JsonProperty("frameworkID")
    private String frameWorkID;
    @JsonProperty("hazardidentificationMethod")
    private String hazardIdentificationMethod;
    @JsonProperty("riskdegreeID")
    private Integer riskDegreeID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("mRiskdegreeitems")
    private List<Riskdegreeitem> mRiskdegreeitems = new ArrayList<>();

    //无参构造方法
    public Riskdegree() {
    }

    //带参构造方法
    public Riskdegree(String coalMineName, String frameWorkID, String hazardIdentificationMethod, Integer riskDegreeID) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.hazardIdentificationMethod = hazardIdentificationMethod;
        this.riskDegreeID = riskDegreeID;
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
    public String getHazardIdentificationMethod() {
        return this.hazardIdentificationMethod;
    }

    @JsonIgnore
    public void setHazardIdentificationMethod(String hazardIdentificationMethod) {
        this.hazardIdentificationMethod = hazardIdentificationMethod;
    }

    @JsonIgnore
    public Integer getRiskDegreeID() {
        return this.riskDegreeID;
    }

    @JsonIgnore
    public void setRiskDegreeID(Integer riskDegreeID) {
        this.riskDegreeID = riskDegreeID;
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
    public List<Riskdegreeitem> getmRiskdegreeitems() {
        return mRiskdegreeitems;
    }

    @JsonIgnore
    public void setmRiskdegreeitems(List<Riskdegreeitem> mRiskdegreeitems) {
        this.mRiskdegreeitems = mRiskdegreeitems;
    }

    //判断具体等级
    public Riskdegreeitem checkRiskValue(double value) {
        if (this.mRiskdegreeitems != null) {
            for (Riskdegreeitem item : this.mRiskdegreeitems) {
                if (item.getRiskRangMIX() <= value && item.getRiskRangMAX() >= value) {
                    return item;
                }
            }
        }
        return null;
    }
}