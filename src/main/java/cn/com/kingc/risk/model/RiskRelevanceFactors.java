package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

/*风险危害因素关联关系上报*/
public class RiskRelevanceFactors implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("id")
    private String id;
    @JsonProperty("hazardFactorsId")
    private String hazardFactorsId;
    @JsonProperty("riskIdentificationId")
    private String riskIdentificationId;
    @JsonProperty("hfLevel")
    private String hfLevel;
    @JsonProperty("manageDepart")
    private String manageDepart;
    @JsonProperty("manageUser")
    private String manageUser;
    @JsonProperty("hfManageMeasure")
    private String hfManageMeasure;

    public RiskRelevanceFactors() {
        super();
    }

    public RiskRelevanceFactors(String id, String hazardFactorsId, String riskIdentificationId, String hfLevel, String manageDepart, String manageUser, String hfManageMeasure) {
        this.id = id;
        this.hazardFactorsId = hazardFactorsId;
        this.riskIdentificationId = riskIdentificationId;
        this.hfLevel = hfLevel;
        this.manageDepart = manageDepart;
        this.manageUser = manageUser;
        this.hfManageMeasure = hfManageMeasure;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHazardFactorsId() {
        return hazardFactorsId;
    }

    public void setHazardFactorsId(String hazardFactorsId) {
        this.hazardFactorsId = hazardFactorsId;
    }

    public String getRiskIdentificationId() {
        return riskIdentificationId;
    }

    public void setRiskIdentificationId(String riskIdentificationId) {
        this.riskIdentificationId = riskIdentificationId;
    }

    public String getHfLevel() {
        return hfLevel;
    }

    public void setHfLevel(String hfLevel) {
        this.hfLevel = hfLevel;
    }

    public String getManageDepart() {
        return manageDepart;
    }

    public void setManageDepart(String manageDepart) {
        this.manageDepart = manageDepart;
    }

    public String getManageUser() {
        return manageUser;
    }

    public void setManageUser(String manageUser) {
        this.manageUser = manageUser;
    }

    public String getHfManageMeasure() {
        return hfManageMeasure;
    }

    public void setHfManageMeasure(String hfManageMeasure) {
        this.hfManageMeasure = hfManageMeasure;
    }
}

