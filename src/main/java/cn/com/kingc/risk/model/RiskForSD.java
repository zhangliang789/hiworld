package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
/*风险上报*/
public class RiskForSD  implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("id")
    private String id;
    @JsonProperty("identificationType")
    private String identificationType;
    @JsonProperty("addressId")
    private String addressId;
    @JsonProperty("addressName")
    private String addressName;
    @JsonProperty("postId")
    private String postId;
    @JsonProperty("riskType")
    private String riskType;
    @JsonProperty("riskDesc")
    private String riskDesc;
    @JsonProperty("riskLevel")
    private String riskLevel;
    @JsonProperty("manageLevel")
    private String manageLevel;
    @JsonProperty("dutyManager")
    private String dutyManager;
    @JsonProperty("identifiDate")
    private String identifiDate;
    @JsonProperty("expDate")
    private String expDate;
    @JsonProperty("specificType")
    private String specificType;
    @JsonProperty("specificName")
    private String specificName;
    @JsonProperty("isDel")
    private String isDel;

    public RiskForSD() {
        super();
    }

    public RiskForSD(String id, String identificationType, String addressId, String addressName, String postId, String riskType, String riskDesc, String riskLevel, String manageLevel, String dutyManager, String identifiDate, String expDate, String specificType, String specificName, String isDel) {
        this.id = id;
        this.identificationType = identificationType;
        this.addressId = addressId;
        this.addressName = addressName;
        this.postId = postId;
        this.riskType = riskType;
        this.riskDesc = riskDesc;
        this.riskLevel = riskLevel;
        this.manageLevel = manageLevel;
        this.dutyManager = dutyManager;
        this.identifiDate = identifiDate;
        this.expDate = expDate;
        this.specificType = specificType;
        this.specificName = specificName;
        this.isDel = isDel;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdentificationType() {
        return identificationType;
    }

    public void setIdentificationType(String identificationType) {
        this.identificationType = identificationType;
    }

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId;
    }

    public String getAddressName() {
        return addressName;
    }

    public void setAddressName(String addressName) {
        this.addressName = addressName;
    }

    public String getPostId() {
        return postId;
    }

    public void setPostId(String postId) {
        this.postId = postId;
    }

    public String getRiskType() {
        return riskType;
    }

    public void setRiskType(String riskType) {
        this.riskType = riskType;
    }

    public String getRiskDesc() {
        return riskDesc;
    }

    public void setRiskDesc(String riskDesc) {
        this.riskDesc = riskDesc;
    }

    public String getRiskLevel() {
        return riskLevel;
    }

    public void setRiskLevel(String riskLevel) {
        this.riskLevel = riskLevel;
    }

    public String getManageLevel() {
        return manageLevel;
    }

    public void setManageLevel(String manageLevel) {
        this.manageLevel = manageLevel;
    }

    public String getDutyManager() {
        return dutyManager;
    }

    public void setDutyManager(String dutyManager) {
        this.dutyManager = dutyManager;
    }

    public String getIdentifiDate() {
        return identifiDate;
    }

    public void setIdentifiDate(String identifiDate) {
        this.identifiDate = identifiDate;
    }

    public String getExpDate() {
        return expDate;
    }

    public void setExpDate(String expDate) {
        this.expDate = expDate;
    }

    public String getSpecificType() {
        return specificType;
    }

    public void setSpecificType(String specificType) {
        this.specificType = specificType;
    }

    public String getSpecificName() {
        return specificName;
    }

    public void setSpecificName(String specificName) {
        this.specificName = specificName;
    }

    public String getIsDel() {
        return isDel;
    }

    public void setIsDel(String isDel) {
        this.isDel = isDel;
    }
}
