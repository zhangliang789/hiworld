package cn.com.kingc.risk.model;

import com.alibaba.fastjson.JSONArray;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
/*风险及关联信息上报*/
public class RiskRelevanceOthers implements Serializable {
    private static final long serialVersionUID = 1L;

  //riskJsonArray
    @JsonProperty("riId")
    private String riId;
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
    //relJsonArray
    @JsonProperty("reId")
    private String reId;
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
    //factorsJsonArray
    @JsonProperty("faId")
    private String faId;
    @JsonProperty("faRiskType")
    private String faRiskType;
    @JsonProperty("major")
    private String major;
    @JsonProperty("hazardFactors")
    private String hazardFactors;
    @JsonProperty("faIsDel")
    private String faIsDel;
    @JsonProperty("from")
    private String from;
    @JsonProperty("faRiskLevel")
    private String faRiskLevel;
    @JsonProperty("manageMeasure")
    private String manageMeasure;
    //addressJsonArray
    @JsonProperty("adId")
    private String adId;
    @JsonProperty("aiAddressName")
    private String aiAddressName;
    @JsonProperty("aiManageMan")
    private String aiManageMan;
    @JsonProperty("adIsDelete")
    private String adIsDelete;
    @JsonProperty("belongLayer")
    private String belongLayer;
    //layerJsonArray
    @JsonProperty("laId")
    private String laId;
    @JsonProperty("layerCode")
    private String layerCode;
    @JsonProperty("layerDetailName")
    private String layerDetailName;
    @JsonProperty("url")
    private String url;
    @JsonProperty("center")
    private String center;
    @JsonProperty("isShow")
    private String isShow;

    public RiskRelevanceOthers() {
        super();
    }

    public RiskRelevanceOthers(String riId, String identificationType, String addressId, String addressName, String postId, String riskType, String riskDesc, String riskLevel, String manageLevel, String dutyManager, String identifiDate, String expDate, String specificType, String specificName, String isDel, String reId, String hazardFactorsId, String riskIdentificationId, String hfLevel, String manageDepart, String manageUser, String hfManageMeasure, String faId, String faRiskType, String major, String hazardFactors, String faIsDel, String from, String faRiskLevel, String manageMeasure, String adId, String aiAddressName, String aiManageMan, String adIsDelete, String belongLayer, String laId, String layerCode, String layerDetailName, String url, String center, String isShow) {
        this.riId = riId;
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
        this.reId = reId;
        this.hazardFactorsId = hazardFactorsId;
        this.riskIdentificationId = riskIdentificationId;
        this.hfLevel = hfLevel;
        this.manageDepart = manageDepart;
        this.manageUser = manageUser;
        this.hfManageMeasure = hfManageMeasure;
        this.faId = faId;
        this.faRiskType = faRiskType;
        this.major = major;
        this.hazardFactors = hazardFactors;
        this.faIsDel = faIsDel;
        this.from = from;
        this.faRiskLevel = faRiskLevel;
        this.manageMeasure = manageMeasure;
        this.adId = adId;
        this.aiAddressName = aiAddressName;
        this.aiManageMan = aiManageMan;
        this.adIsDelete = adIsDelete;
        this.belongLayer = belongLayer;
        this.laId = laId;
        this.layerCode = layerCode;
        this.layerDetailName = layerDetailName;
        this.url = url;
        this.center = center;
        this.isShow = isShow;
    }

    public String getRiId() {
        return riId;
    }

    public void setRiId(String riId) {
        this.riId = riId;
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

    public String getReId() {
        return reId;
    }

    public void setReId(String reId) {
        this.reId = reId;
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

    public String getFaId() {
        return faId;
    }

    public void setFaId(String faId) {
        this.faId = faId;
    }

    public String getFaRiskType() {
        return faRiskType;
    }

    public void setFaRiskType(String faRiskType) {
        this.faRiskType = faRiskType;
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

    public String getFaIsDel() {
        return faIsDel;
    }

    public void setFaIsDel(String faIsDel) {
        this.faIsDel = faIsDel;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getFaRiskLevel() {
        return faRiskLevel;
    }

    public void setFaRiskLevel(String faRiskLevel) {
        this.faRiskLevel = faRiskLevel;
    }

    public String getManageMeasure() {
        return manageMeasure;
    }

    public void setManageMeasure(String manageMeasure) {
        this.manageMeasure = manageMeasure;
    }

    public String getAdId() {
        return adId;
    }

    public void setAdId(String adId) {
        this.adId = adId;
    }

    public String getAiAddressName() {
        return aiAddressName;
    }

    public void setAiAddressName(String aiAddressName) {
        this.aiAddressName = aiAddressName;
    }

    public String getAiManageMan() {
        return aiManageMan;
    }

    public void setAiManageMan(String aiManageMan) {
        this.aiManageMan = aiManageMan;
    }

    public String getAdIsDelete() {
        return adIsDelete;
    }

    public void setAdIsDelete(String adIsDelete) {
        this.adIsDelete = adIsDelete;
    }

    public String getBelongLayer() {
        return belongLayer;
    }

    public void setBelongLayer(String belongLayer) {
        this.belongLayer = belongLayer;
    }

    public String getLaId() {
        return laId;
    }

    public void setLaId(String laId) {
        this.laId = laId;
    }

    public String getLayerCode() {
        return layerCode;
    }

    public void setLayerCode(String layerCode) {
        this.layerCode = layerCode;
    }

    public String getLayerDetailName() {
        return layerDetailName;
    }

    public void setLayerDetailName(String layerDetailName) {
        this.layerDetailName = layerDetailName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCenter() {
        return center;
    }

    public void setCenter(String center) {
        this.center = center;
    }

    public String getIsShow() {
        return isShow;
    }

    public void setIsShow(String isShow) {
        this.isShow = isShow;
    }
}

