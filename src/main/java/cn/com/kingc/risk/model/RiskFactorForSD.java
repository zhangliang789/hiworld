package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
/*危害因素*/
public class RiskFactorForSD implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("id")
    private String id;
    @JsonProperty("riskType")
    private String riskType;
    @JsonProperty("major")
    private String major;
    @JsonProperty("hazardFactors")
    private String hazardFactors;
    @JsonProperty("isDel")
    private String isDel;
    @JsonProperty("from")
    private String from;
    @JsonProperty("riskLevel")
    private String riskLevel;
    @JsonProperty("manageMeasure")
    private String manageMeasure;

    public RiskFactorForSD() {
    }

    public RiskFactorForSD(String id, String riskType, String major, String hazardFactors, String isDel, String from, String riskLevel, String manageMeasure) {
        this.id = id;
        this.riskType = riskType;
        this.major = major;
        this.hazardFactors = hazardFactors;
        this.isDel = isDel;
        this.from = from;
        this.riskLevel = riskLevel;
        this.manageMeasure = manageMeasure;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRiskType() {
        return riskType;
    }

    public void setRiskType(String riskType) {
        this.riskType = riskType;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getHazardFactors() {
        return hazardFactors;
    }

    public void setHazardFactors(String hazardFactors) {
        this.hazardFactors = hazardFactors;
    }

    public String getIsDel() {
        return isDel;
    }

    public void setIsDel(String isDel) {
        this.isDel = isDel;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getRiskLevel() {
        return riskLevel;
    }

    public void setRiskLevel(String riskLevel) {
        this.riskLevel = riskLevel;
    }

    public String getManageMeasure() {
        return manageMeasure;
    }

    public void setManageMeasure(String manageMeasure) {
        this.manageMeasure = manageMeasure;
    }
}
